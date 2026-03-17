### how we can check run containers
docker ps 

### how we can check all containers status 
docker ps -a

#### How we can see docker images
docker images

### docker start
docker start <container id>

### how we can build the image 
docker run -d -p 8000:80 nginx

docker run = docker pull + docker create + docker run
-d 'running in backgroud'
-p 'unableing port for acces through the internet'
80 'nginx por number'
nginx 'image name'

#### how we can remove the container

docker rm <container id>
docker rm -f <container id>  --- forceful way
docker rm `docker ps -a -q`  ---this is for removing all the container at a time

### how we can remove the image

docker rmi <image id or image name>

### docker enabling 
systemctl enable docker

### docker start
systemctl start docker

### docekr status
systemctl status docker




