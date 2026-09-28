@echo off
chcp 1251

set F_speed=speed.exe
set F_attrib=GLOBAL\attributes.bin
set F_dyntex=GLOBAL\DYNTEX.BIN
set F_gBlzc=GLOBAL\GlobalB.lzc
set F_gBbun=GLOBAL\GLOBALB.BUN
set F_fb=FRONTEND\FrontB.lzc
set M_attrib=X360DATA\EIGF\GLOBAL\attributes.bin
set M_dyntex=X360DATA\EIGF\GLOBAL\DYNTEX.BIN
set M_fb=X360DATA\EIGF\FRONTEND\FrontB.lzc
set M_script=X360DATA\scripts\MW360Tweaks.asi
set F_script=scripts\MW360Tweaks.asi
set F_dinput=dinput8.dll
set fbicons=X360DATA\EIGF\FRONTEND\tpk_*.tpk
set buntool=X360DATA\GLOBALB\buntool.exe
set bunbuild=X360DATA\GLOBALB\bunbuild.exe
set gbbins=X360DATA\GLOBALB\unk_*.bin
set gbicons=X360DATA\GLOBALB\tpk_*.tpk
set tpf_main=NFS MW (2005) - X360 stuff [Main part].tpf
set tpf_bonus=NFS MW (2005) - X360 stuff [Bonus part].tpf
set reshade=[ReShade] NFS MW (2005) - X360 stuff.ini
set ce_table=MW05-X360-Stuff-CE_TABLE.CT
set rhexe=ResourceHacker.exe
set rhexe_patch=%rhexe% -open speed.exe -save speed.exe -action addoverwrite -res
set shdr_car=X360DATA\EXE\IDI_CAR_FX.bin
set shdr_sky=X360DATA\EXE\IDI_SKYBOX_FX.bin
set shdr_fltr=X360DATA\EXE\IDI_SCREENFILTER_FX.bin
set M_Gmem=X360DATA\EIGF\GLOBAL\GlobalMemoryFile.bin
set M_IGmem=X360DATA\EIGF\GLOBAL\InGameMemoryFile.bin
set M_Pmem=X360DATA\EIGF\GLOBAL\PermanentMemoryFile.bin
set F_Gmem=GLOBAL\GlobalMemoryFile.bin
set F_IGmem=GLOBAL\InGameMemoryFile.bin
set F_Pmem=GLOBAL\PermanentMemoryFile.bin


:language
goto lang_en

echo Type "en" for English text
echo -
echo Напиши "ру" для Русского текста
set /p op=
if "%op%"=="en" goto lang_en
if "%op%"=="ру" goto lang_ru
goto language

:lang_en
set warn=WARNING:
set err=ERROR:
set cantfind=Can't find
set cantfindmod=Can't find modified
set cantfindback=Can't find backup of
set str_bat=================== A .bat installer for this pack ==================
set str_makesure=MAKE SURE YOU READ "ReadMe.txt" AND RUNNING THIS INSTALLER IN THE GAME'S FOLDER
set str_copy=Copyrights: none, thanks to SpeedyHeart for old "Beta carbon menus" installer
set str_protect=PROTECTION:
set str_chkcommon=checking if all common files are here...
set str_success=SUCCESS, we're ready to continue...

set str_pill=What pill will you take?
set str_pill_readme=(Read "ReadMe.txt, seriously)
set str_pill_1=Type "1" to take EI-IDK-SUPER-SECRET-PILL
set str_pill_2=Type "0" to take CI-SAME-THING-PILL

set str_chkneeded=checking if all needed files are here...

set str_bkup_ask1=Before we start - do you want to backup your files?
set str_bkup_ask2=You will be able to easily restore them / uninstall this pack by going into this installer again.

set str_bkup_1=If you want to backup your files, then type "1"
set str_bkup_0=If you don't want to, then type "0"
set str_bkup_2=If you want to restore your files, then type "2"
set str_bkup_3=If you want to uninstall this pack, then type "3"

set str_bkup_note=(You need to have backups)

set str_bkup_list=List of the files, that will be backuped:

set str_bkup_action=Backuping your files...

set str_restr_action=Restoring your files...
set str_restr_done="Restoring files" operation is done.

set str_finish_note1=If you're seeing errors - check if you really backuped your files. Maybe you just denied to do that earlier?
set str_finish_note2=(If you're having problem with "FrontB.lzc",
set str_finish_note3=never installed "X360 Icons" bonus - don't worry, that's okay)

set str_finish="NFS:MW (2005) - X360 stuff" pack is successfully installed!

set str_finish_ask1=Do you want to restart the installer, or just quit?
set str_finish_ask2=Restart installer by typing "1"
set str_finish_ask3=If you want to quit, then press any button

set str_bonus_ask1=Do you want additionally to replace keyboard icons with style-canonic X360 buttons?
set str_bonus_ask2=(style-canonic - they are pure white on X360 version of the game, not like in "Widescreen fix")

set str_bonus_note=This will additionaly require to replace "%F_fb%" file.

set str_bonus_1=Type "1", if you want to install that + backup of the "%F_fb%" file.
set str_bonus_2=Type "2", if you want to install that
set str_bonus_3=Type "0", if you don't want to install that.

set str_inst_copy=Install: Copying main files...
set str_inst_copy_icons=Install: Copying "X360 Icons" bonus
set str_inst_gbpatch=Install: Patching %F_gBlzc%...
set str_inst_done="Install" operation is done.
set str_inst_done_icons="Copying "X360 Icons" bonus" operation is done.

set str_uninst_asi=Now removing .asi script...
set str_uninst_asi_done="Removing script" operation is done.

set str_uninst_bkp=Now removing all backups...
set str_uninst_bkp_done="Removing backups" operation is done.

set str_uninst_dir=Now removing mod data folder...
set str_uninst_dir_note=(If you've removed this folder earlier - that's alright, ignore that)

set str_uninst_done="NFS:MW (2005) - X360 stuff" pack is successfully uninstalled!

set str_close=You can close this file by pressing any button.

set str_err_fix1=QUICK FIX: Please put this .bat installer into game's folder.
set str_err_fix2=If it's alredy here - go to "ReadMe.txt", to category "HELP".
set str_err_ignore1=You can ignore that protection, if you REALLY know what are you doing.
set str_err_ignore2=Type "IKnowWhatImDoing_X", where X should be the number that resembles the installation type.

set str_uninst_tpf=Removing re-texture packages...
set str_uninst_tpf_done="Removing re-texture packages..." operation is done.

set str_uninst_bonus=Removing bonus files...
set str_uninst_bonus_done="Removing bonus files..." operation is done.

set str_tpkfile=.tpk file

set str_exepatch=Install: Patching executable...

goto begin

:lang_ru
set warn=ВНИМАНИЕ:
set err=ОШИБКА:
set cantfind=Не могу найти
set cantfindmod=Не могу найти модифицированный
set cantfindback=Не могу найти бекап

:begin
echo ======== Need for Speed: Most Wanted (2005) - Xbox360 stuff ========
echo %str_bat%
echo -
echo %str_makesure%
echo %str_copy%
echo --------------------------------------------------------------
echo -
echo %str_protect% %str_chkcommon%
if not exist %F_speed% goto error
if not exist %F_gBlzc% goto error

for %%i in (%F_gBlzc%) do set v=%%~zi
if %v% lss 1536000 (if not exist %F_gBbun% (goto error) else (set gbpatch=%F_gBbun%)) else (set gbpatch=%F_gBlzc%)

if not exist %F_dinput% goto error
if not exist %M_script% goto error
if not exist %buntool% goto error
if not exist %bunbuild% goto error
if not exist %gbbins% goto error
if not exist %rhexe% goto error
if not exist %shdr_car% goto error
if not exist %shdr_sky% goto error
if not exist %shdr_fltr% goto error
if not exist %F_Gmem% goto error
if not exist %F_IGmem% goto error
if not exist %F_Pmem% goto error
echo -
echo %str_success%

:install_type
echo -
echo --------------------------------------------------------------
echo -
echo %str_pill%
echo -
echo %str_pill_readme%
echo -
echo -
echo %str_pill_1%
echo %str_pill_2%
set /p op=
if "%op%"=="1" goto ei_begin
if "%op%"=="0" goto ci_begin
goto install_type

:ci_begin
set backup_after=install_ci
goto backup_request

:ei_begin
set backup_after=bonus
echo -
echo --------------------------------------------------------------
echo -
echo %str_protect% %str_chkneeded%
if not exist %F_attrib% goto error
if not exist %F_dyntex% goto error
if not exist %F_fb% goto error
if not exist %M_attrib% goto error
if not exist %M_dyntex% goto error
if not exist %M_fb% goto error
if not exist %gbicons% goto error
if not exist %fbicons% goto error
if not exist %M_Gmem% goto error
if not exist %M_IGmem% goto error
if not exist %M_Pmem% goto error
if not exist %M_HUDSizeASI% goto error
if not exist %M_HUDSizeINI% goto error

:backup_request
echo -
echo --------------------------------------------------------------
echo -
echo %str_bkup_ask1%
echo %str_bkup_ask2%
echo -
echo -
echo %str_bkup_1%
echo %str_bkup_0%
echo -
echo %str_bkup_2%
echo %str_bkup_note%
echo -
echo %str_bkup_3%
echo %str_bkup_note%
echo -
echo -
echo %str_bkup_list%
echo === %F_speed%
echo === %F_attrib%
echo === %F_dyntex%
echo === %F_gBlzc%
echo === %F_Gmem%
echo === %F_IGmem%
echo === %F_Pmem%
echo -
set /p op=
if "%op%"=="1" goto backup
if "%op%"=="0" goto %backup_after%
if "%op%"=="2" goto restore
if "%op%"=="3" goto uninstall
goto backup_request

:backup
echo -
echo --------------------------------------------------------------
echo -
echo %str_bkup_action%
copy /-y %F_speed% %F_speed%.bak
copy /-y %F_attrib% %F_attrib%.bak
copy /-y %F_dyntex% %F_dyntex%.bak
copy /-y %F_gBlzc% %F_gBlzc%.bak
copy /-y %F_Gmem% %F_Gmem%.bak
copy /-y %F_IGmem% %F_IGmem%.bak
copy /-y %F_Pmem% %F_Pmem%.bak
goto %backup_after%

:restore
echo -
echo --------------------------------------------------------------
echo -
echo %str_restr_action%
echo -
if not exist %F_speed%.bak (echo %warn% %cantfindback% "%F_speed%") else (copy %F_speed%.bak %F_speed%)
if not exist %F_attrib%.bak (echo %warn% %cantfindback% "%F_attrib%") else (copy %F_attrib%.bak %F_attrib%)
if not exist %F_dyntex%.bak (echo %warn% %cantfindback% "%F_dyntex%") else (copy %F_dyntex%.bak %F_dyntex%)
if not exist %F_gBlzc%.bak (echo %warn% %cantfindback% "%F_gBlzc%") else (copy %F_gBlzc%.bak %F_gBlzc%)
if not exist %F_fb%.bak (echo %warn% %cantfindback% "%F_fb%") else (copy %F_fb%.bak %F_fb%)
if not exist %F_Gmem%.bak (echo %warn% %cantfindback% "%F_Gmem%") else (copy %F_Gmem%.bak %F_Gmem%)
if not exist %F_IGmem%.bak (echo %warn% %cantfindback% "%F_IGmem%") else (copy %F_IGmem%.bak %F_IGmem%)
if not exist %F_Pmem%.bak (echo %warn% %cantfindback% "%F_Pmem%") else (copy %F_Pmem%.bak %F_Pmem%)
echo -
echo --------------------------------------------------------------
echo -
echo %str_restr_done%
echo -
echo %str_finish_note1%
echo %str_finish_note2%
echo %str_finish_note3%
echo -
echo -
echo %str_finish_ask1%
echo %str_finish_ask2%
echo %str_finish_ask3%
echo -
set /p op=
if "%op%"=="1" goto language
goto exit

:bonus
echo -
echo --------------------------------------------------------------
echo -
echo %str_bonus_ask1%
echo %str_bonus_ask2%
echo -
echo %str_bonus_note%
echo -
echo %str_bonus_1%
echo %str_bonus_2%
echo %str_bonus_3%
echo -
set /p op=
if "%op%"=="1" goto backup_icons
if "%op%"=="2" goto install_icons_set
if "%op%"=="0" goto install
goto bonus

:backup_icons
echo -
echo --------------------------------------------------------------
echo -
echo Backuping "%F_fb%"...
copy /-y %F_fb% %F_fb%.bak

:install_icons_set
set install_icons=goto install_icons

:install
echo -
echo --------------------------------------------------------------
echo -
echo %str_inst_copy%
copy %M_attrib% %F_attrib%
copy %M_dyntex% %F_dyntex%
copy %M_Gmem% %F_Gmem%
copy %M_IGmem% %F_IGmem%
copy %M_Pmem% %F_Pmem%
goto install_2

:install_ci
echo -
echo --------------------------------------------------------------
echo -
echo %str_inst_copy%

:install_2
if not exist scripts\nul md scripts
copy %M_script% %F_script%
echo -
echo --------------------------------------------------------------
echo -
echo %str_exepatch%
%rhexe_patch% %shdr_car% -mask RCDATA,IDI_CAR_FX
%rhexe_patch% %shdr_sky% -mask RCDATA,IDI_SKYBOX_FX
%rhexe_patch% %shdr_fltr% -mask RCDATA,IDI_SCREENFILTER_FX

:install_gb
echo -
echo %str_inst_gbpatch%
%buntool% %gbpatch%
copy %gbbins% GLOBAL\GLOBALB\
%install_icons%
%bunbuild% GLOBAL\GLOBALB\ %F_gBlzc%
@rd /s /q GLOBAL\GLOBALB\
echo --------------------------------------------------------------
echo -
echo %str_inst_done%
goto finish

:install_icons
echo -
echo --------------------------------------------------------------
echo -
echo %str_inst_copy_icons%
copy %gbicons% GLOBAL\GLOBALB\tpk_*.bin
%bunbuild% GLOBAL\GLOBALB\ %F_gBlzc%
@rd /s /q GLOBAL\GLOBALB\
for %%2 in (%F_fb%) do set v2=%%~z2
if %v2% lss 3072000 (copy %M_fb% %F_fb%) else (
%buntool% %F_fb%
copy %fbicons% FRONTEND\FrontB\unk_*.bin
%bunbuild% FRONTEND\FrontB\ %F_fb%
@rd /s /q FRONTEND\FrontB\
)
echo -
echo --------------------------------------------------------------
echo -
echo %str_inst_done_icons%
echo -
echo --------------------------------------------------------------
echo -
echo %str_inst_done%
goto finish


:uninstall
echo -
echo --------------------------------------------------------------
echo -
echo %str_restr_action%
echo -
if not exist %F_speed%.bak (echo %warn% %cantfindback% "%F_speed%") else (copy %F_speed%.bak %F_speed%)
if not exist %F_attrib%.bak (echo %warn% %cantfindback% "%F_attrib%") else (copy %F_attrib%.bak %F_attrib%)
if not exist %F_dyntex%.bak (echo %warn% %cantfindback% "%F_dyntex%") else (copy %F_dyntex%.bak %F_dyntex%)
if not exist %F_gBlzc%.bak (echo %warn% %cantfindback% "%F_gBlzc%") else (copy %F_gBlzc%.bak %F_gBlzc%)
if not exist %F_fb%.bak (echo %warn% %cantfindback% "%F_fb%") else (copy %F_fb%.bak %F_fb%)
if not exist %F_Gmem%.bak (echo %warn% %cantfindback% "%F_Gmem%") else (copy %F_Gmem%.bak %F_Gmem%)
if not exist %F_IGmem%.bak (echo %warn% %cantfindback% "%F_IGmem%") else (copy %F_IGmem%.bak %F_IGmem%)
if not exist %F_Pmem%.bak (echo %warn% %cantfindback% "%F_Pmem%") else (copy %F_Pmem%.bak %F_Pmem%)
echo -
echo --------------------------------------------------------------
echo -
echo %str_restr_done%
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_asi%
if not exist %F_script% (echo %warn% %cantfind% "%F_script%") else (del /f %F_script%)
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_asi_done%
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_bkp%
if not exist %F_speed%.bak (echo %warn% %cantfindback% "%F_speed%") else (del /f %F_speed%.bak)
if not exist %F_attrib%.bak (echo %warn% %cantfindback% "%F_attrib%") else (del /f %F_attrib%.bak)
if not exist %F_dyntex%.bak (echo %warn% %cantfindback% "%F_dyntex%") else (del /f %F_dyntex%.bak)
if not exist %F_gBlzc%.bak (echo %warn% %cantfindback% "%F_gBlzc%") else (del /f %F_gBlzc%.bak)
if not exist %F_fb%.bak (echo %warn% %cantfindback% "%F_fb%") else (del /f %F_fb%.bak)
if not exist %F_Gmem%.bak (echo %warn% %cantfindback% "%F_Gmem%") else (del /f %F_Gmem%.bak)
if not exist %F_IGmem%.bak (echo %warn% %cantfindback% "%F_IGmem%") else (del /f %F_IGmem%.bak)
if not exist %F_Pmem%.bak (echo %warn% %cantfindback% "%F_Pmem%") else (del /f %F_Pmem%.bak)
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_bkp_done%
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_dir%
if not exist X360DATA\nul (
echo %warn% %cantfind% "X360DATA" folder
echo %str_uninst_dir_note%
echo -
) else (
@rd /s /q X360DATA
)
echo --------------------------------------------------------------
echo -
echo %str_uninst_tpf%
if not exist "%tpf_main%" (echo %warn% %cantfindback% "%tpf_main%") else (del /f "%tpf_main%")
if not exist "%tpf_bonus%" (echo %warn% %cantfindback% "%tpf_bonus%") else (del /f "%tpf_bonus%")
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_tpf_done%
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_bonus%
if not exist "%reshade%" (echo %warn% %cantfindback% "%reshade%") else (del /f "%reshade%")
if not exist "%ce_table%" (echo %warn% %cantfindback% "%ce_table%") else (del /f "%ce_table%")
echo -
echo --------------------------------------------------------------
echo -
echo %str_uninst_bonus_done%
echo -
echo %str_finish_note1%
echo %str_finish_note2%
echo %str_finish_note3%
echo -
echo %str_uninst_done%
echo %str_close%
pause
@rd /s /q CI
@del /f ReadMe.txt
@del /f "Google drive guide.txt"
@del /f ПрочитайМеня.txt
@del /f ResourceHacker.exe
@del /f ResourceHacker.ini
del %0

:finish
echo -
echo --------------------------------------------------------------
echo -
echo %str_finish%
echo %str_close%
pause
@del /f "Google drive guide.txt"
goto exit

:error
echo -
if not exist %F_speed% echo %err% %cantfind% "%F_speed%"
if not exist %F_attrib% echo %err% %cantfind% "%F_attrib%"
if not exist %F_dyntex% echo %err% %cantfind% "%F_dyntex%"
if not exist %F_gBbun% echo %err% %cantfind% "%F_gBbun%"
if not exist %F_gBlzc% echo %err% %cantfind% "%F_gBlzc%"
if not exist %F_fb% echo %err% %cantfind% "%F_fb%"
if not exist %F_dinput% echo %err% %cantfind% "Ultimate ASI Loader"
if not exist %M_attrib% echo %err% %cantfindmod% "attributes.bin"
if not exist %M_dyntex% echo %err% %cantfindmod% "DYNTEX.BIN"
if not exist %M_fb% echo %err% %cantfindmod% "FrontB.lzc"
if not exist %M_script% echo %err% %cantfind% "%M_script%"
if not exist %fbicons% echo %err% %cantfind% "FrontB.lzc" %str_tpkfile%
if not exist %buntool% echo %err% %cantfind% "%buntool%"
if not exist %bunbuild% echo %err% %cantfind% "%bunbuild%"
if not exist %gbbins% echo %err% %cantfind% shader materials
if not exist %gbicons% echo %err% %cantfind% "GlobalB.lzc" %str_tpkfile%
if not exist %rhexe% echo %err% %cantfind% "Resource Hacker"
if not exist %shdr_car% echo %err% %cantfind% "%shdr_car%"
if not exist %shdr_sky% echo %err% %cantfind% "%shdr_sky%"
if not exist %shdr_fltr% echo %err% %cantfind% "%shdr_fltr%"
if not exist %M_Gmem% echo %err% %cantfind% "%M_Gmem%"
if not exist %M_IGmem% echo %err% %cantfind% "%M_IGmem%"
if not exist %M_Pmem% echo %err% %cantfind% "%M_Pmem%"
if not exist %F_Gmem% echo %err% %cantfind% "%F_Gmem%"
if not exist %F_IGmem% echo %err% %cantfind% "%F_IGmem%"
if not exist %F_Pmem% echo %err% %cantfind% "%F_Pmem%"

echo -
echo %str_err_fix1%
echo %str_err_fix2%
echo -
echo %str_err_ignore1%
echo %str_err_ignore2%
echo -
set /p op=
if "%op%"=="IKnowWhatImDoing_1" goto backup_request
if "%op%"=="IKnowWhatImDoing_0" goto ci_begin
goto error