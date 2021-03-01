#### This is a readme for test task of company TRG

Following tools are being used to achieve the test task 
---------------
- Jenkins 
- Ansible
- Docker & docker-compose
- Python 
- AWS

Description
---------------

The infrastructure is on aws, if you want I can create a user for you and you can see what's done there. Basically there's 2 ec2 instances, one for jenkins and one for "docker".
Jenkins is configured in a way that on each push/pr on **ANY** branch it is being triggered. The Jenkins , when triggered, will run `Jenkinsfile`, which will be different depending on branch.
<br>
Ansible consists of one playbook which copy's the contents of `docker-compose.yml` to the server, pull image from `dockerhub` and "up"'s docker-compose.<br>
There is branch staging, which will be used for testing. The Jenkinsfile there has simple integration test written in python. <br>
Firstly I integrated ansible with Jenkins (you can see it in commit history), but then I decided not to include ansible there as I think best approach would be to make the last step manual (with human intervention).
Because I set up everything on AWS, I can provide additional layer of security so the app would be accesable only from localhost and jenkin's servers SG. Servers are up now, so if You wish pls contact me and I will give credentials so you can log in to jenkins.
As you can see in file [docker-compose.yml](docker-compose.yml), app is exposed only on localhost.<br>
I didn't want to spend much time, but If I did, I would make localhost secure with nginx and certbot(with docker of course).<br>
Regarding the question how `kubernetes` or `docker-compose` would help us, docker-compose make it easy to work with containers because we can wrap all our setup in one yml file and control everything from one place. And with kubernetes, we can have high availability, fault tolerance,scalability. Plus, with kubernetes, we can have updates without downtime.

