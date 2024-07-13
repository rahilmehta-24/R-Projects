@echo off

REM Start the Python Flask app
start /B python app.py

REM Wait for the Flask app to start
timeout /T 5

REM Start the R Plumber API
start /B Rscript rscript.R

REM Wait for the Plumber API to start
timeout /T 5

REM Open the web browser to the Flask app's root endpoint
start "" "http://localhost:6000/"

REM Open the web browser to the Plumber API's root endpoint
start "" "http://localhost:7000/"

REM Keep the batch file open
pause
