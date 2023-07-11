@echo off
set path=\masm32\bin
set lib=\masm32\lib
set name=KillMBR
ml.exe /c /coff "%name%".asm
link.exe /SUBSYSTEM:WINDOWS /opt:nowin98 /LIBPATH:"%lib%" "%name%".obj
del *.OBJ
pause
@echo on
cls