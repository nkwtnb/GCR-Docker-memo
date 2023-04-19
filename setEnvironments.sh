MYSQL_DATABASE=$(sh getMetaData.sh mysql_database)
MYSQL_ROOT_PASSWORD=$(sh getMetaData.sh mysql_root_password)
MYSQL_USERNAME=$(sh getMetaData.sh mysql_user)
MYSQL_PASSWORD=$(sh getMetaData.sh mysql_password)

rm -f ~/.env
echo "MYSQL_DATABASE=$MYSQL_DATABASE" >> .env
echo "MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD" >> .env
echo "MYSQL_USERNAME=$MYSQL_USERNAME" >> .env
echo "MYSQL_PASSWORD=$MYSQL_PASSWORD" >> .env