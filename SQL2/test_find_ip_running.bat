@echo off
FOR /F "tokens=*" %%g IN ('docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" sql1') do (SET VAR=%%g)
echo %var%
pause