#Create a Dockerfile content in the repo and follow below steps
# 1. Build the image
docker build -t my-apache-ubuntu .

# 2. List images
docker images

# 3. Run container
docker run -d -p 8080:80 --name apache-container my-apache-ubuntu

# 4. Wait for container to start
sleep 3

# 5. Modify the running container's index.html by adding a line with date
docker exec apache-container bash -c "echo '<p>Updated on '$(date)'</p>' >> /var/www/html/index.html"

# 6. Commit changes to new image
docker commit apache-container my-apache-ubuntu-updated

# 7. Stop and remove old container
docker stop apache-container
docker rm apache-container

# 8. Run container from updated image
docker run -d -p 8080:80 --name apache-container-updated my-apache-ubuntu-updated

echo "Done! Visit http://localhost:8080 to see the updated page."

