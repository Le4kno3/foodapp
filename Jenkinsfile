pipeline {
    agent any 

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('clean') {
    	    agent any
            steps {
                sh 'sudo mvn clean'
            }
        }
        stage('compile') {
    	    agent any
            steps {
                sh 'sudo mvn compile'
            }
        }
    	stage('test') {
    	    agent any
            steps {
                sh 'sudo mvn test'             
            }
        }
        stage('package') {
    	    agent any
            steps {
                sh 'sudo mvn package'             
            }
        }
        stage('deploy'){
            agent any
            steps{
                sh '''rm -rf dockerimg
mkdir dockerimg
cd dockerimg
cp ../target/foodapp.war .
cp ../databases/test.sql .
cp ../databases/cart_db.sql .
touch Dockerfile
cat <<EOT>>Dockerfile
FROM tomcat:9.0
LABEL maintainer="shamal indurkar"
ADD foodapp.war /usr/local/tomcat/webapps/foodapp.war
ADD test.sql /usr/local/tomcat/webapps/test.sql
ADD cart_db.sql /usr/local/tomcat/webapps/cart_db.sql
RUN apt update
RUN apt install mariadb-server -y
RUN service mariadb start
RUN mysql -e "create database test; create database cart_db; ALTER USER 'root'@'localhost' IDENTIFIED BY '12Password12#'; FLUSH PRIVILEGES;"
RUN mysql --user=root --password=12Password12# test -e "SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';START TRANSACTION;SET time_zone = '+00:00';CREATE TABLE registration (id int(11) NOT NULL,firstName varchar(50) NOT NULL, lastName varchar(50) NOT NULL,userName varchar(20) NOT NULL,phone bigint(10) NOT NULL,email varchar(50) NOT NULL,password varchar(20) NOT NULL,conpassword varchar(20) NOT NULL,address varchar(50) NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=latin1;INSERT INTO registration (id, firstName, lastName, userName, phone, email, password, conpassword, address) VALUES (0, 'test6', 'Test6', 'Test6', 123456789, 'Test6@test.com', 'Test6', 'Test6', 'Test6 address'),(1, 'test1', 'test1', 'test1', 123456789, 'test1@test.com', 'test1', 'test1', 'test1 address'),(2, '', 'Test4', 'Test4', 123456789, 'Test4@test.com', 'Test4', 'Test4', 'Test4 address');ALTER TABLE registration ADD PRIMARY KEY (id);ALTER TABLE registration MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49; COMMIT;"
RUN mysql --user=root --password=12Password12# test -e "SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';START TRANSACTION;SET time_zone = '+00:00';CREATE TABLE products (id int(255) NOT NULL,name varchar(255) NOT NULL,price varchar(255) NOT NULL,image varchar(255) NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;INSERT INTO products (id, name, price, image) VALUES(23, 'pizza', '100', 'Biryani1.jpg');ALTER TABLE products ADD PRIMARY KEY (id); ALTER TABLE products MODIFY id int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;COMMIT;"
EXPOSE 8080
CMD ["catalina.sh", "run"]
EOT
sudo docker build --no-cache --rm=false -t webimage:1.0 .
if [ ! "$(sudo docker ps -q -f name='webserver')" ]; then
    if [ "$(sudo docker ps -aq -f status=exited -f name='webserver')" ]; then
        sudo docker rm webserver
        sudo docker rmi webimage
    fi
    sudo docker container run -itd --name webserver -p 8888:8080 webimage:1.0
fi'''
            }
        }
    }
}
