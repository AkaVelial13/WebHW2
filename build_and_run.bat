@echo off

REM Build container
docker build -t hw2 .

REM Time delay
timeout /t 10

REM Run container
docker run -it hw2