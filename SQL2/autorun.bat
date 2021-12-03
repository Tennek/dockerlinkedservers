Pushd "%~dp0"
FOR /F "tokens=*" %%g IN ('docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" sql1') do (SET IPSQL1=%%g)
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Test654321?" -p 1434:1433 --name sql2 -h sql2 -d kennethtestsql2 "%IPSQL1%, 1433"
popd