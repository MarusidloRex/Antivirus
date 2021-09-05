@echo off
color 49
cls

echo ahoj jsem antivirus jak v m mohu pomoci?
echo Nyní s novou Máťovou technologií MD5 skenu!
:vypis_akci
echo Mo§n‚ akce:
echo    konec
echo    karant‚na 
echo    odstranit
echo    vybrat
echo    hacker
echo    skenovat
echo    kod md5
echo    akce
echo    informace
:start
set  /p _vstup=Zadej akci: 
TITLE [antivirus]
if "%_vstup%"=="konec" goto konec
if "%_vstup%"=="karant‚na" goto karantena
if "%_vstup%"=="odstranit" goto odstranit
if "%_vstup%"=="vybrat" goto vybrat
if "%_vstup%"=="hacker" goto hacker
if "%_vstup%"=="skenovat" goto skenovat
if "%_vstup%"=="kod md5" goto kod_md5
if "%_vstup%"=="akce" goto vypis_akci
if "%_vstup%"=="informace" goto informace
if "%_vstup%"=="scan chov nˇ" goto scan_chovani
echo Nezn m  akce
goto start

:odstranit
echo odstraĺov nˇ
@timeout 3 > nul
del hacker.jpg
del halo.bat
echo odstranŘno!
echo chyby (co dŘlal virus?) 765499569code 021codeS
goto start

:vybrat
echo Antivirus
set  /p _vir=zadejte jm‚no virusu:
echo ach jo
timeout 3 > nul
move /Y %_vir% karantena > nul
echo pýesunuto do karant‚ny
timeout 1 > nul
goto start

:karantena
echo Jseç v karant‚nŘ!
goto start

:skenovat
echo pozor virus nalezen! (halo.bat)
timeout 2  > nul
del halo.bat 
goto start

:kod_md5
set _tmp_file=code_md5.txt
set /p file=Zadej jm‚no souboru: 
@rem sem (nahoýe) zad ç jm‚no souboru
@rem tohle pýed  md5 hash do souboru
@CertUtil -hashfile %file% MD5 > %_tmp_file% 
@rem tohle pýeźte md5 hash souboru
for /f "tokens=1*delims=:" %%G in ('findstr /n "^" %_tmp_file%') do if %%G equ 2 set filemd5=%%H
@rem tohle sma§e soubor s md5 hashem
del %_tmp_file%
set threat=""

if "%filemd5%" == "1f 13 39 6f a5 9d 38 eb e7 6c cc 58 7c cb 11 bb" (
  set threat=Navashield
  set type=FalešnýAntivirus
)
if "%filemd5%" == "c0 0b 9c 16 28 8d f6 78 fe d2 08 90 e5 ea 7f 5d" (
  set threat=prd
  set type=MarečkovoVirus
)
if "%filemd5%" == "01 63 e2 20 b0 16 04 d4 f0 85 49 8f 23 31 95 b5" (
  set threat=iloveyou
  set type=NebezpečnýVirus
)
if "%filemd5%" == "f2 24 ef a7 1d e2 c2 25 4f 7c d0 5f 57 62 bc fd" (
  set threat=Brytt
  set type=TrojskýKůň
)
if "%filemd5%" == "d3 2c 35 e9 53 e9 46 bd db e5 0b fe 98 05 cb 06" (
  set threat=TurkishRansom
  set type=Ransomware
)
if "%filemd5%" == "ef 4f df 65 fc 90 bf da 8d 1d 2a e6 d2 0a ff 60" (
  set threat=NoEscape
  set type=NebezpečnýVirus
)
if "%filemd5%" == "31 59 1a 4a b9 50 06 41 5e 8e 0e 2a f7 e3 5f 19" (
  set threat=AntivirusGOLD
  set type=FalešnýAntivirus
)
if "%filemd5%" == "93 5a 75 e0 c7 70 22 40 cb 53 0b 31 a8 3b 7c bc" (
  set threat=SadComputer
  set type=Ransomware
)
if "%threat%" == """" goto bezpecny

:threat
 color cf
echo pozor virus nalezen! (%threat%)
echo Detaily:
echo typ viru: %type%
echo md5: %filemd5%
pause
goto start

:scan_chovani
color 7
echo Vˇtejte ve scanu chov nˇ jak v m mohu pomoci?
echo.
set  /p _vstup=zadat soubor:
set _tmp_file=code_md5.txt
@rem sem (nahoýe) zad ç jm‚no souboru
@rem tohle pýed  md5 hash do souboru
@CertUtil -hashfile %file% MD5 > %_tmp_file% 
@rem tohle pýeźte md5 hash souboru
for /f "tokens=1*delims=:" %%G in ('findstr /n "^" %_tmp_file%') do if %%G equ 2 set filemd5=%%H
@rem tohle sma§e soubor s md5 hashem
del %_tmp_file%
set threat=""

if "%filemd5%" == "1f 13 39 6f a5 9d 38 eb e7 6c cc 58 7c cb 11 bb" (
  set threat=Navashield
  set type=FalešnýAntivirus
)
if "%filemd5%" == "c0 0b 9c 16 28 8d f6 78 fe d2 08 90 e5 ea 7f 5d" (
  set threat=prd
  set type=MarečkovoVirus
)
if "%filemd5%" == "01 63 e2 20 b0 16 04 d4 f0 85 49 8f 23 31 95 b5" (
  set threat=iloveyou
  set type=NebezpečnýVirus
)
if "%filemd5%" == "f2 24 ef a7 1d e2 c2 25 4f 7c d0 5f 57 62 bc fd" (
  set threat=Brytt
  set type=TrojskýKůň
)
if "%filemd5%" == "d3 2c 35 e9 53 e9 46 bd db e5 0b fe 98 05 cb 06" (
  set threat=TurkishRansom
  set type=Ransomware
)
if "%filemd5%" == "ef 4f df 65 fc 90 bf da 8d 1d 2a e6 d2 0a ff 60" (
  set threat=NoEscape
  set type=NebezpečnýVirus
)
if "%filemd5%" == "31 59 1a 4a b9 50 06 41 5e 8e 0e 2a f7 e3 5f 19" (
  set threat=AntivirusGOLD
  set type=FalešnýAntivirus
)
if "%filemd5%" == "93 5a 75 e0 c7 70 22 40 cb 53 0b 31 a8 3b 7c bc" (
  set threat=SadComputer
  set type=Ransomware
)
if not "%threat%" == """" goto threat
echo.
echo.
echo Scan Chov nˇ (Beta)
pause > nul




:informace
color 07
echo tento antivirus je zdarma,dŘl  md5 kody posˇl  novinky pýes gmail a ma§e soubory (týeba halo.bat)
goto start






:konec
rem pause > nul
@echo on
