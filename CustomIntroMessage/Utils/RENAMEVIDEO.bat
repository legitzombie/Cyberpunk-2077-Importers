@echo off

REM  ▄▄▄██▀▀▀▄▄▄       ███▄ ▄███▓▓█████   ██████
REM    ▒██  ▒████▄    ▓██▒▀█▀ ██▒▓█   ▀ ▒██    ▒
REM    ░██  ▒██  ▀█▄  ▓██    ▓██░▒███   ░ ▓██▄
REM ▓██▄██▓ ░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄   ▒   ██▒
REM  ▓███▒   ▓█   ▓██▒▒██▒   ░██▒░▒████▒▒██████▒▒
REM  ▒▓▒▒░   ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░
REM  ▒ ░▒░    ▒   ▒▒ ░░  ░      ░ ░ ░  ░░ ░▒  ░ ░
REM  ░ ░ ░    ░   ▒   ░      ░      ░   ░  ░  ░
REM  ░   ░        ░  ░       ░      ░  ░      ░
REM
REM          ▄▄▄█████▓ ██░ ██ ▓█████
REM          ▓  ██▒ ▓▒▓██░ ██▒▓█   ▀
REM          ▒ ▓██░ ▒░▒██▀▀██░▒███
REM          ░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄
REM            ▒██▒ ░ ░▓█▒░██▓░▒████▒
REM            ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░
REM              ░     ▒ ░▒░ ░ ░ ░  ░
REM            ░       ░  ░░ ░   ░
REM                    ░  ░  ░   ░  ░
REM
REM  ██░ ██  ▄▄▄       ▄████▄   ██ ▄█▀▓█████  ██▀███
REM ▓██░ ██▒▒████▄    ▒██▀ ▀█   ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
REM ▒██▀▀██░▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ ▒███   ▓██ ░▄█ ▒
REM ░▓█ ░██ ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
REM ░▓█▒░██▓ ▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄░▒████▒░██▓ ▒██▒
REM  ▒ ░░▒░▒ ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
REM  ▒ ░▒░ ░  ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
REM  ░  ░░ ░  ░   ▒   ░        ░ ░░ ░    ░     ░░   ░
REM  ░  ░  ░      ░  ░░ ░      ░  ░      ░  ░   ░
REM  

setlocal enabledelayedexpansion

set "script_path=%~dp0"

for %%i in ("%script_path%\..") do set "source_path=%%~fi\Video"
for %%i in ("%script_path%\..") do set "dest_path=%%~fi\temp\archive\base\movies\fullscreen\common\"

if not exist "%dest_path%" mkdir "%dest_path%"

set count=0

for %%f in ("%source_path%\*") do (
    set "ext=%%~xf"
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_ar!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_cz!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_de!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_en!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_es!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_fr!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_hu!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_it!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_jp!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_kr!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_mx!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_pl!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_pr!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_ru!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_th!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_tr!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_tw!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_ua!ext!" >nul
    copy "%%f" "%dest_path%cyberpunk2077_game_intro_message_zh_cn!ext!" >nul
    set /a count+=1
)

endlocal

