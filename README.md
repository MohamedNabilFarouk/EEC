Clone repo
create new database in Phpmyadmin with name (task_eec) username(root)
in project folder there is sql file with name(task_eec.sql)
import task_eec.sql file in created database in step 2
open cmd and run " composer install "
configure .env file with database name and username password
then run command "php artisan key:generate "
open cmd and run " php artisan serve "
