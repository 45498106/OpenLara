@echo off
cls
set SRC=main.cpp ../../libs/stb_vorbis/stb_vorbis.c
set PROJ=OpenLara
set FLAGS=-O3 -Wno-deprecated-register --llvm-opts 2 -fmax-type-align=2 -std=c++11 -Wall -I../../
set PRELOAD=./LEVEL2.PSX
echo.
call em++ %SRC% %FLAGS% -o %PROJ%.js --preload-file %PRELOAD%
gzip.exe -9 -f %PROJ%.data %PROJ%.js %PROJ%.js.mem