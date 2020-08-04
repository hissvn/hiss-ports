@echo off
cd %HOME%\hiss-ports\js && haxe build.hxml && node %HOME%\hiss-ports\js\index.js --no-console-reader %*