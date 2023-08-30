@ECHO OFF
cd ..
docker run --name mongodb -v "C:\VersionControl\MongoDBExperimentation\MongoDBData":"/data/db" -e MONGO_INITDB_ROOT_USERNAME="root" -e MONGO_INITDB_ROOT_PASSWORD="password" -p 27017:27017 -d mongo:latest
ECHO Press enter to close the database container
pause
docker stop mongodb
docker rm mongodb
ECHO Press enter to exit
pause
