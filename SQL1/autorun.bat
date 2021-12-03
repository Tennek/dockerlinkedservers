Pushd "%~dp0"
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Test654321?" -p 1433:1433 --name sql1 -h sql1 -d kennethtestsql1
popd