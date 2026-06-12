# ROS-Robot-Controller (STM32 Firmware)

Dokumentacja techniczna i instrukcja wdrożeniowa oprogramowania niskopoziomowego (firmware) dla autonomicznego drona kołowego. Repozytorium zawiera kod źródłowy na mikrokontroler z rodziny STM32 (np. na płytce deweloperskiej RRCLite wyposażonej w układ STM32F407VET6). Oprogramowanie zarządza warstwą wykonawczą układu jezdnego – sterowaniem 4 silnikami DC na podstawie sygnałów z enkoderów w lokalnej pętli sprzężenia zwrotnego.

> **Ważne:** Projekt został w pełni przeportowany na zestaw narzędzi **GCC** (GNU Compiler Collection) i jest dostosowany do bezpośredniego uruchamiania, kompilacji oraz debugowania w środowisku **STM32CubeIDE**.

---

## Wymagania sprzętowe

Oprogramowanie zostało przygotowane z myślą o architekturze sprzętowej składającej się z:
* **Mikrokontroler docelowy:** Płytka kontrolera (np. RRCLite) z mikrokontrolerem STM32F407VET6 (168MHz, ARM Cortex-M4).
* **Układ wykonawczy:** 4 silniki prądu stałego (DC) wyposażone w enkodery do pomiaru prędkości obrotowej.
* **Zasilanie i komunikacja pokładowa:** Płytka posiada wyprowadzone oddzielne złącze zasilania 5V dedykowane dla komputera Raspberry Pi oraz złącze USB do komunikacji szeregowej z warstwą ROS 2[cit.

---

## 1. Architektura sterowania i logika działania

W odróżnieniu od standardowych rozwiązań, w tym projekcie nastąpił ścisły podział obowiązków obliczeniowych pomiędzy komputer pokładowy (Raspberry Pi) a mikrokontroler (STM32):

### Komunikacja z warstwą ROS 2 (Master -> Slave)
Firmware pracuje w architekturze slave i nasłuchuje na porcie szeregowym USB instrukcji od komputera pokładowego. 
W tej architekturze **Raspberry Pi całkowicie odpowiada za obliczenia odwrotnej kinematyki** dla podwozia holonomicznego (Mecanum). Do mikrokontrolera STM32 trafiają już przeliczone, docelowe wartości prędkości dla każdego z czterech silników z osobna.

### Lokalna pętla sprzężenia zwrotnego (Closed-loop control)
Mikrokontroler nie odsyła surowych danych o liczbie impulsów z enkoderów z powrotem do Raspberry Pi. Zamiast tego:
* **Czytanie enkoderów:** STM32 wykorzystuje sprzętowe liczniki (Timery) do odczytywania impulsów z 4 enkoderów podłączonych bezpośrednio do płytki.
* **Regulacja PID:** Na podstawie odczytów z enkoderów, firmware oblicza aktualną prędkość każdego koła i przetwarza ją w lokalnym regulatorze PID. Mikrokontroler sam moduluje sygnały PWM, aby jak najszybciej i najdokładniej osiągnąć zadaną przez RPi prędkość.

---

## 2. Konfiguracja środowiska i kompilacja

### Krok 2.1: Instalacja STM32CubeIDE
Oprogramowanie zostało przygotowane do łatwego rozruchu w darmowym środowisku dostarczanym przez STMicroelectronics.
1. Pobierz i zainstaluj środowisko **STM32CubeIDE** dla Twojego systemu operacyjnego.
2. Upewnij się, że posiadasz zainstalowane odpowiednie sterowniki dla programatora sprzętowego (np. ST-LINK) lub jesteś w stanie wgrać kod bezpośrednio przez USB.

### Krok 2.2: Import projektu do środowiska roboczego
Z racji wdrożenia struktury opartej na kompilatorze GCC, projekt jest gotowy do natychmiastowego importu:
1. Uruchom STM32CubeIDE i wskaż lokalizację swojego *Workspace*.
2. Z górnego paska narzędzi wybierz: `File` -> `Import...`.
3. W oknie dialogowym rozwiń zakładkę `General`, wybierz `Existing Projects into Workspace` i przejdź dalej klikając `Next`.
4. W sekcji *Select root directory* wskaż główny folder sklonowanego repozytorium **RosRobotController**.
5. Upewnij się, że projekt pojawił się na liście i zatwierdź klikając `Finish`.

### Krok 2.3: Budowanie (Build) i wgrywanie oprogramowania (Flash)
1. W lewym panelu *Project Explorer* kliknij prawym przyciskiem myszy na główny węzeł projektu i wybierz opcję **Build Project** (lub użyj ikony młotka na pasku głównym). Kompilator GCC wygeneruje pliki binarne (`.elf`, `.bin`).
2. Podłącz płytkę do stacji roboczej. W zależności od sprzętu, wykorzystaj programator SWD lub interfejs USB służący do wgrywania oprogramowania.
3. Wybierz ikonę **Run** lub **Debug**, aby sflashować układ STM32.
