#!/bin/bash
#run the setup script to create the DB and the schema in the DB
#do this in a loop because the timing for when the SQL instance is ready is indeterminate
echo "linkedserver : * $1 *"

for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Test654321? -d master -i setup.sql -v linkedserver="$1"
    if [ $? -eq 0 ]
    then
        echo "setup.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done

#seed data
#/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Test654321? -d master -i products.sql
#echo "seed products.sql completed"

#make sure the container does not close itself
sleep infinity