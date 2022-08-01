@echo off
mode con:cols=74 lines=20 
cls	

color 5C
type snok.txt
echo.
timeout 5
cls

mode con:cols=147 lines=29
color C5
type imie.txt
echo.
timeout 5
cls

color 05
mode con:cols=96 lines=25
:poczatek
cls
echo "`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'
echo Wybierz z listy
echo "`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'"`-._,-'
echo.
echo 1) Menu Uzytkownicy
echo 2) Informacje
echo 3) Narzedzia systemowe
echo 4) Zapis
echo 5) Uruchamianie
echo 6) Test
echo 7) Wyjscie
echo.
set /p opcja=wybierz:
if %opcja%==1 goto opcja1
if %opcja%==2 goto opcja2
if %opcja%==3 goto opcja3
if %opcja%==4 goto opcja4
if %opcja%==5 goto opcja5
if %opcja%==6 goto opcja6
if %opcja%==7 exit
goto zw

:opcja1
cls
echo wybrano Menu Uzytkownicy
timeout 2
cls
echo 1) Informacje o uzytkowniku 
echo 2) Informacje o grupach
echo 3) Uzytkownicy o najwyzszych uprawnieniach
echo 4) Zapisanie do pliku 
echo 5) Wyjscie
echo.

set /p opcja=wybierz:
if %opcja%==1 goto ioz
if %opcja%==2 goto iog
if %opcja%==3 goto uonu
if %opcja%==4 goto zdp
if %opcja%==5 exit
goto zw

:ioz
cls
echo wybrano Informacje o uzytkowniku
timeout 2
cls
net user
pause
goto poczatek

:iog
cls
echo wybrano Informacje o grupach
timeout 2
cls
net localgroup
pause
goto poczatek 

:uonu
cls
echo wybrano Uzytkownicy o najwyzszych uprawnieniach
timeout 2
cls
net localgroup Administratorzy 
pause 
goto poczatek 

:zdp
cls
echo wybrano Zapisanie do pliku
timeout 2
cls
net user >> C:\Users\%username%\Desktop\uzytkownicy.txt
net localgroup >> C:\Users\%username%\Desktop\uzytkownicy.txt
net localgroup Administratorzy >> C:\Users\%username%\Desktop\uzytkownicy.txt
pause
goto poczatek

:zw
cls
echo Opcja nieznana. Wybierz ponownie 
pause
goto poczatek

:opcja2
cls
echo wybrano Informacje 
timeout 2
cls
echo 1) Infomracje o systemie
echo 2) Pliki temp
echo 3) Usuwanie plikow temp 
echo 4) Informacje o karcie siecowej (w tym MAC)
echo 5) Lista procesow
echo 6) Atrybuty plikow znajdujacych sie w katalogu, w ktorym jest ten skrypt
echo 7) Wyjscie
echo.

set /p opcja=wybierz:
if %opcja%==1 goto ios
if %opcja%==2 goto pt
if %opcja%==3 goto upt
if %opcja%==4 goto ioks
if %opcja%==5 goto lp
if %opcja%==6 goto apzswk
if %opcja%==7 exit
goto zw

:ios
cls
echo wybrano Informacje o systemie
timeout 2
cls 
ver
pause 
goto poczatek

:pt
cls
echo wybrano Pliki temp
timeout 2
cls
tree C:\Users\%username%\AppData\Local\Temp
pause
goto poczatek 

:upt
cls
echo wybrano Usuwanie plikiow temp 
tiemout 2
cls
del /f /s /q %temp%
pause
goto poczatek

:ioks
cls
echo wybrano Informacje o karcie sieciowej 
timeout 2
cls
ipconfig /all
pause
goto poczatek 

:lp
cls
echo wybrano Lista procesow 
timeout 2
cls
tasklist
pause
goto poczatek 

:apzswk
cls
echo wybrano Atrybuty plikow znajdujacych sie w katalogu, w ktorym jest ten skrypt
timeout 2
cls
echo Znaczenie poszczegolnych znakow:
echo  R-tylko do odczytu
echo  A-plik archiwalne
echo  S-plik systemowy
echo  H-ukryte 
echo .
attrib
pause
goto poczatek 

:zw
cls
echo Opcja nieznana. Wybierz ponownie 
pause
goto poczatek

:opcja3
cls 
echo wybrano Narzedzi systemowe 
timeout 2
cls
echo Prosze wpisac jedna z ponizszych nazw (np. Lupa)
echo W przypadku 2 lub wiecej slow prosze zamiast spacji napisac -
echo 1) Lupa
echo 2) Rejestr
echo 3) Zarzadzanie uzytkownikami i grupami (Zarzadzanie-uig)
echo 4) Panel sterowania 
echo 5) Zarzadzanie zasadami grup (Zarzadzanie-zg)
echo 6) Programy i funckje
echo 7) Menedzer urzadzen 
echo 8) Punkt przywracania
echo 9) Kopia zapasowa 
echo 10) Tablica znakow
echo 11) Zarzadzanie dyskami
echo 12) Podglad zdarzen
echo 13) Pomoc zdalna
echo 14) Pulpit zdalny 
echo 15) Karty sieciowe 
echo 16) Rejestrator krokow 
echo 17) Wyjscie 
echo.

set /p opcja=wybierz:
if %opcja%==Lupa goto l
if %opcja%==Rejestr goto r
if %opcja%==Zarzadzanie-uig goto zuig
if %opcja%==Panel-sterowania goto ps
if %opcja%==Zarzadzanie-zg goto zzg
if %opcja%==Programy-i-funkcje goto pif
if %opcja%==Menedzer-urzadzen goto mu
if %opcja%==Punkt-przywracania goto pp
if %opcja%==Kopia-zapasowa goto kz
if %opcja%==Tablica-znakow goto tz
if %opcja%==Zarzadzanie-dyskami goto zd
if %opcja%==Podglad-zdarzen goto pz
if %opcja%==Pomoc-zdalna goto pmz
if %opcja%==Pulpit-zdalny goto puz
if %opcja%==Karty-sieciowe goto ks
if %opcja%==Rejestrator-krokow goto rk
if %opcja%==Wyjscie exit
goto zw

:l
cls
magnify.exe
pause 
goto poczatek

:r
cls
regedit.exe
pause 
goto poczatek

:zuig
cls
lusrmgr.msc
pause
goto poczatek

:ps
cls
control panel
pause
goto poczatek

:zzg 
cls
gpedit.msc
pause
goto poczatek

:pif
cls
control appwiz.cpl
pause
goto poczatek 

:mu
cls
devmgmt.msc
pause 
goto poczatek

:pp
cls
rstrui.exe
pause
goto poczatek

:kz
cls
control /name Microsoft.BackupAndRestore
pause
goto poczatek 

:tz
cls
charmap.exe
pause
goto poczatek

:zd
cls
diskmgmt.msc
pause
goto poczatek 

:pz
cls
eventvwr.msc/s
pause
goto poczatek 

:pmz
cls
quickassist.exe
pause 
goto poczatek 

:puz
cls
mstsc.exe
pause
goto poczatek 

:ks
cls
ncpa.cpl
pause
goto poczatek

:rk
cls
psr.exe
pause
goto poczatek 

:zw
cls
echo Opcja nieznana. Wybierz ponownie 
pause
goto poczatek

:opcja4
cls
echo 1) Zapisanie drzewa plikow C na pulpicie
echo 2) Zapisanie informacji dlaczego lubimy SO
echo 3) Zapisanie informacji o otwieraniu tego pliku
echo 4) Wyjscie 
echo. 

set /p opcja=wybierz:
if %opcja%==1 goto zdp
if %opcja%==2 goto zid
if %opcja%==3 goto zioo
if %opcja%==4 exit
goto zw

:zdp
cls
cd ..
tree C: >> C:\Users\%username%\Desktop\drzewo.txt
pause
goto poczatek 

:zid
cls
echo Lubie systemy, poniewaz pomagaja nam w codziennych trudnych sytuacjach :) >>C:\Users\%username%\Desktop\gajewski.txt
pause
goto poczatek 

:zioo
cls
echo Uzytkownik %USERNAME% uruchomil dzis tj %DATE% %TIME% skrypt >> C:\Users\%username%\Desktop\info.txt
pause
goto poczatek 

:zw
cls
echo Opcja nieznana. Wybierz ponownie 
pause
goto poczatek

:opcja5
cls
echo 1) Strona szkoly ZSL
echo 2) Portal Librus
echo 3) Notatnik
echo 4) Wylaczenie notatnika
echo 5) Wylaczenie komputera
echo 6) Wylogowanie uzytkownika 
echo 7) Wyjscie
echo.

set /p opcja=wybierz:
if %opcja%==1 goto ssz
if %opcja%==2 goto pl
if %opcja%==3 goto n
if %opcja%==4 goto wn
if %opcja%==5 goto wk
if %opcja%==6 goto wu
if %opcja%==7 exit
goto zw

:ssz
cls
start https://tl.krakow.pl/
pause
goto poczatek

:pl
cls
start https://portal.librus.pl/rodzina
pause
goto poczatek 

:n
cls
notepad.exe
pause 
goto poczatek

:wn
cls
taskkill /F /IM notepad.exe
pause
goto poczatek

:wk
cls
shutdown /s

:wu
cls
shutdowm /l

:zw
cls
echo Opcja nieznana. Wybierz ponownie 
pause
goto poczatek

:opcja6
cls
SET Dobre=0
SET Zle=0
SET Inne=0
echo Uzytkownik %USERNAME% rozpoczal test o godzinie %TIME%, %DATE% >> C:\Users\%USERNAME%\Desktop\Test.txt
start https://www.plociennik.info/components/com_egzamin/foto//E12/E12.21-X-20.06.jpg
cls
echo Rysunek obrazuje zasade dzialania drukarki
echo a) sublimacyjnej
echo b) atramentowej
echo c) laserowej
echo d) iglowej

set /p opcja=wybierz:
if %opcja%==a goto z1
if %opcja%==b goto d1
if %opcja%==c goto z1
if %opcja%==d goto z1
goto inne1

:z1
SET /a zle=%zle%+1
cls
echo Bledna odpowiedz
timeout 2
echo Zad1 Odpowiedz nieprawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie2

:d1
SET /a dobre=%dobre%+1
cls
echo Poprawna odpowiedz
timeout 2
echo Zad1 Odpowiedz prawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie2

:inne1
SET /a inne=%inne%+1
cls
echo Inna odpowiedz 
timeout 2
echo Zad1 Inna odpowiedz >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie2

:pytanie2
cls
echo Ktore urzadzenie zastosowane w sieci komputerowej nie zmienia liczby domen kolizyjnych?
echo a) Ruter
echo b) Serwer
echo c) Przelacznik
echo d) Koncentrator 

set /p opcja=wybierz:
if %opcja%==a goto z2
if %opcja%==b goto d2
if %opcja%==c goto z2
if %opcja%==d goto z2
goto inne2

:z2
SET /a zle=%zle%+1
cls
echo Bledna odpowiedz
timeout 2
echo Zad2 Odpowiedz nieprawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie3

:d2
SET /a dobre=%dobre%+1
cls
echo Poprawna odpowiedz
timeout 2
echo Zad2 Odpowiedz prawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie3

:inne2
SET /a inne=%inne%+1
cls
echo Inna odpowiedz 
timeout 2
echo Zad2 Inna odpowiedz >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie3

:pytanie3
cls
echo Do sprawdzenia wartosci napiecia w zasilaczu sluzy
echo a) multimetr
echo b) pirometr
echo c) aamperomierz
echo d) impulsator 

set /p opcja=wybierz:
if %opcja%==a goto d3
if %opcja%==b goto z3
if %opcja%==c goto z3
if %opcja%==d goto z3
goto inne3

:z3
SET /a zle=%zle%+1
cls
echo Bledna odpowiedz
timeout 2
echo Zad3 Odpowiedz nieprawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie4

:d3
SET /a dobre=%dobre%+1
cls
echo Poprawna odpowiedz
timeout 2
echo Zad3 Odpowiedz prawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie4

:inne3
SET /a inne=%inne%+1
cls
echo Inna odpowiedz 
timeout 2
echo Zad3 Inna odpowiedz >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie4

:pytanie4
start https://www.plociennik.info/components/com_egzamin/foto//EE08/EE08.06-X-19.01.jpg
cls
echo Na rysunku przedstawiono tylny panel stacji roboczej. Strzalka oznaczono port
echo a) HDMI
echo b) eSATA
echo c) USB 3.0
echo d) DisplayPort

set /p opcja=wybierz:
if %opcja%==a goto z4
if %opcja%==b goto z4
if %opcja%==c goto z4
if %opcja%==d goto d4
goto inne4

:z4
SET /a zle=%zle%+1
cls
echo Bledna odpowiedz
timeout 2
echo Zad4 Odpowiedz nieprawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie5

:d4
SET /a dobre=%dobre%+1
cls
echo Poprawna odpowiedz
timeout 2
echo Zad4 Odpowiedz prawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie5

:inne4
SET /a inne=%inne%+1
cls
echo Inna odpowiedz 
timeout 2
echo Zad4 Inna odpowiedz >> C:\Users\%USERNAME%\Desktop\Test.txt
goto pytanie5

:pytanie5
cls
echo W ukladzie SI jednostka miary napiecia jest
echo a) wat
echo b) herc
echo c) wolt
echo d) amper

set /p opcja=wybierz:
if %opcja%==a goto z5
if %opcja%==b goto z5
if %opcja%==c goto z5
if %opcja%==d goto d5
goto inne5

:z5
SET /a zle=%zle%+1
cls
echo Bledna odpowiedz
timeout 2
echo Zad5 Odpowiedz nieprawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto podsumowanie 

:d5
SET /a dobre=%dobre%+1
cls
echo Poprawna odpowiedz
timeout 2
echo Zad5 Odpowiedz prawidlowa >> C:\Users\%USERNAME%\Desktop\Test.txt
goto podsumowanie

:inne5
SET /a inne=%inne%+1
cls
echo Inna odpowiedz 
timeout 2
echo Zad5 Inna odpowiedz >> C:\Users\%USERNAME%\Desktop\Test.txt
goto podsumowanie 

:podsumowanie 
echo Test zakonczono o %time%, %DATE% >> C:\Users\%USERNAME%\Desktop\Test.txt
echo Dobre odpowiedzi: %dobre% >>C:\Users\%USERNAME%\Desktop\Test.txt
echo Zle odpowiedzi: %zle% >>C:\Users\%USERNAME%\Desktop\Test.txt
echo Inne odpowiedzi: %inne% >>C:\Users\%USERNAME%\Desktop\Test.txt
cls
echo Podsumowanie znajduje sie na pulpicie 
pause
goto poczatek 

:zw
cls
echo Opcja nieznana. Wybierz ponownie 
pause
goto poczatek








