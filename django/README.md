# Application
This container wraps all the functions and scripts used by django application

### Docker Container
Whats inside the docker container.

Base Image :  `python:3.7.1-alpine3.8`

Packages : 
1. postgresql-dev 
2. gcc 
3. python-dev 
4. build-base 
5. py-pip 
6. jpeg-dev 
7. zlib-dev 
8. PIP packages specified in requirements.txt


### File structure
| File/Folder     |      Usecase      |
|-----------------|-------------------|
| scripts| To maintain consistency across different platforms the execution commands are grouped into shell scrpts. |
|swartz| Houses django and django apps.  In development env the swartz directory within the docker container is mounted to swartz directory in the host system to reflect code changes immediately. |


### Scripts 
When docker container is created these scripts are copied into the machine and converted to executeable files.

### Note
In development env the swartz directory within the docker container is mounted to swartz directory in the host system to reflect code changes immediately.


## How to Run


### Development
To run in development env:
1. Install Docker https://www.docker.com/products/docker-desktop
2. From root directory of swartz execute `docker-compose up` or `docker-compose up -d` to run as deamon. Docker will pull and build the image first time and execute the containers.
3. Open `http://127.0.0.1/` to see things in action.


#### Super user
1. To create super used make sure the docker containers are running.
2. Login to docker machine of application 'docker-compose exec app sh'
3. Navigate to application directory in VM. `cd ./application`
4. execute `./manage.py createsuperuser`
