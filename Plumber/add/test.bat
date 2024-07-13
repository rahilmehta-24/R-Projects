@echo off

D:
cd "D:\Projects\R\Plumber\add"

"C:\Program Files\R\R-4.2.2\bin\Rscript.exe" "plumber.R"

"plumber.R" -e "library(plumber); pr <- plumb('D:\Projects\R\Plumber\add'); pr$run(port=5000)"


pause
