#!/bin/bash

@echo off

REM Run the git add command
git add .

REM Get the current date and time
for /f "tokens=1-5 delims=/: " %%d in ("%date% %time%") do (
    set datetime=%%d-%%e-%%f %%g:%%h
)

REM Run the git commit command with the current date and time
git commit -m "%datetime%"

REM Push the changes
git push

echo "Upload Done.........."