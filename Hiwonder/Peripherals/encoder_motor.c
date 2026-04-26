/**
 * @file encoder_motor.c
 * @author Lu Yongping (Lucas@hiwonder.com)
 * @brief 编码器电机硬件无关代码
 * @version 0.1
 * @date 2023-07-12
 *
 * @copyright Copyright (c) 2023
 *
 */


#include "encoder_motor.h"
#include "gpio.h"

/**
 * @brief 编码器电机速度测量更新
 * @detials
 * @param self 编码器电机对象指针
 * @param period 当前更新距离上次更新的时间间隔(更新周期), 单位 sec
 * @param counter 编码器当前计数值
 * @retval None.
*/
void encoder_update(EncoderMotorObjectTypeDef *self, float period, int64_t counter)
{
    counter = counter + self->overflow_num * self->ticks_overflow; /* 总的计数值, 60000 根据实际设置的定时器溢出值 */
    int delta_count = counter - self->counter;
    self->counter = counter; /* 存储新的计数值 */
    self->tps = (float)delta_count / period * 0.9f + self->tps * 0.1f; /* 计算脉冲频率 */
    self->rps = self->tps / self->ticks_per_circle; /* 计算转速 单位rps, 转每秒 */
}

/**
 * @brief 编码器电机速度控制任务
 * @detials 编码器电机速度PID控制任务,需要定时指定以完成PID控制更新
 * @param self 编码器电机对象指针
 * @param period 当前更新距离上次更新的时间间隔(更新周期), 单位 sec
 * @retval None.
*/
void encoder_motor_control(EncoderMotorObjectTypeDef *self, float period)
{

	// --- POCZĄTEK RAMPY PRZYSPIESZENIA ---
	float max_acceleration = 5.0f; // Ile RPS na sekundę może przyspieszyć silnik. Zmniejsz tę wartość (np. do 2.0f), żeby startował jeszcze łagodniej!
	float step = max_acceleration * period;

	if (self->pid_controller.set_point < self->target_rps) {
		self->pid_controller.set_point += step;
		if (self->pid_controller.set_point > self->target_rps) {
			self->pid_controller.set_point = self->target_rps;
		}
	} else if (self->pid_controller.set_point > self->target_rps) {
		self->pid_controller.set_point -= step;
		if (self->pid_controller.set_point < self->target_rps) {
			self->pid_controller.set_point = self->target_rps;
		}
	}
	// --- KONIEC RAMPY PRZYSPIESZENIA ---

    float pulse = 0;
    // --- ZMODYFIKOWANY FRAGMENT ---
        // Sprawdzamy, czy cel to 0 i czy rampa już do tego zera dotarła
        if (self->target_rps == 0.0f && self->pid_controller.set_point == 0.0f) {
            // Twarde odcięcie: wymuszamy 0 i czyścimy historię prądu
            pulse = 0;
            self->current_pulse = 0;
            self->pid_controller.output = 0;
        } else {
            // Normalna jazda: PID pracuje
            pid_controller_update(&self->pid_controller, self->rps, period);
            pulse = self->current_pulse + self->pid_controller.output;
        }
        // --- KONIEC MODYFIKACJI ---

        /* 对输出的 PWM 值进行限幅, 限幅根据定时器的设置确定，本示例定时器设置的占空比 0-100 对应 0-1000 */
        pulse = pulse > 1000 ?  1000 : pulse;
        pulse = pulse < -1000 ? -1000 : pulse;

    self->set_pulse(self, pulse > -10 && pulse < 10 ? 0 : pulse); /* 设置新的PWM值且限制 PWM 的最小值, PWM过小电机只会发出嗡嗡声而不动 */
//    self->set_pulse(self, pulse);
    self->current_pulse = pulse; /* 记录新的 PWM 值 */
}


/**
 * @brief 编码器电机设置PID控制目标速度
 * @param self self 编码器电机对象指针
 * @param rps 目标速度， 单位转每秒
 * @retval None.
 */
void encoder_motor_set_speed(EncoderMotorObjectTypeDef *self, float rps)
{
    rps = rps > self->rps_limit ? self->rps_limit : (rps < -self->rps_limit ? -self->rps_limit : rps);
    self->target_rps = rps; // <--- ZMIEŃ pid_controller.set_point NA target_rps
}


/**
 * @breif 编码器电机对象初始化
 * @param self 编码器电机对象指针
 * @retval None.
*/
void encoder_motor_object_init(EncoderMotorObjectTypeDef *self)
{
    self->counter = 0;
    self->overflow_num = 0;
    self->tps = 0;
    self->rps = 0;
    self->current_pulse = 0;
    self->ticks_overflow = 0;
    self->ticks_per_circle = 9999; /* 电机输出轴旋转一圈产生的计数个数, 根据电机实际情况填写 */
    self->target_rps = 0.0f;
    pid_controller_init(&self->pid_controller, 0, 0, 0);
}

