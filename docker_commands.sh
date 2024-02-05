# go to docker hub, and pull image only if not available localy.
docker run nginx
docker ps -a 
docker stop container_id/container_name
docker rm container_id
# to list and delete image
docker images
# first stop & delete all containers running with the image, then delete. 
docker rmi nginx
docker stop container_name
# if only want to pull images, 
docker pull ubuntu (image name)
docker run ubuntu (imidiately start and exit container)
#container life is till only it's process lives inside it. SO, below container will show running status of container for 10 seconds, and then it's status will be converted to Exit
docker run ubuntu sleep 10
#if you have a running container, and want to show content of a file.
docker exec -it container_name cat /tmp/data,txt
docker run
#to run a container in background
docker run -d nginx sleep 1200
docker attach
docker run -it "container-name" bash
docker run centos sleep 20
docker exec container_id cat /etc/release (give output)
#if delete a docker container before it's job finished, it will give - exit code 137
docker stop centos 
docker rm container_name1 container2 container2

