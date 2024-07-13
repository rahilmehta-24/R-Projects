@echo off

set RSCRIPT_EXE="C:\Program Files\R\R-4.2.2\bin\Rscript.exe"

set PLUMBER_SCRIPT="D:\\Projects\\R\\Plumber\\add\\plumber.R"

set PLUMBER_PORT=5000

%RSCRIPT_EXE% -e "library(plumber); pr <- plumb('%PLUMBER_SCRIPT%'); pr$run(port=%PLUMBER_PORT%)"

exit


