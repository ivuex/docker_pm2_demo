#### How to edit and make a new pm2 docker repository and push to you dockerhub, here give the entire workflow.
 + git clone this git repository
 + cd docker_pm2_demo
 + Do any edit you like in ./src directory, it is the project sources directory.
 + Edit pm2.yaml to tell pm2 how to handle you project.
 + Edit Dockerfile to build a new docker
 + Build a new docker like below:
```
docker build -t ivuex/docker_pm2_demo:lastest .
```
 + Commit a new docker like below:
```
 + docker commit ${the hash generate by last docker build command} ${name}/${docker_repository_name}
```
 + Register you dockerhub account from dockerhub.com, input the username and password into docker login read line.
```
 + docker login
```
 + Push the commited new docker to your dockerhub, of course with docker login like below:
```
docker push ${name}/${docker_repository_name}
```

#### Of course, your can extend the docker container inner system, such as add a open-sshd service in it,
 + If you do so, you can do any ssh thing into the docker container
 + How to? You can read more at https://www.youtube.com/watch?v=Kp9hIsIK38I ,
   - In this viedo the player set the password for root in container, and put sshd service config file and some id_rsa.push into the docker container.
   - You can just enable the open-ssh service in container, without the password proccess step.
   - Later, I will do like so.
