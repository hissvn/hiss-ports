@echo off
cd %HOME%\hiss && haxe build-scripts\repl\build-cpp-repl.hxml && %HOME%\hiss\bin\cpp\CCInterp %*