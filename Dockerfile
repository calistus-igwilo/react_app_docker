# Guide to dockerize a React App: A partial solution to ALC 4.0 Challenge to package a React App in Docker container

# 

# Overview of this assignment
# 1. Create a React App (Create React App)
# 2. Package your app into a Docker image
# 3. Run the container locally on your machine 
# 4. Upload the image to a registry (Docker Hub)
# 5. Create a container cluster (inside Kubernetes Engine in GCP)
# 6. Deploy your app to the cluster
# 7. Expose your app to the Internet



# Instructions on this page will take care of points 1 to 4 only. (i.e creat react app and push to Docker Hub)
# This is not a real solution, it is just a guide. The user is advised to search for how to implement each step


# ****** Write the Dockerfile *******


# - you should use the 'node' official image, (alpine will be good since it is small  node:8-alpine )

# - Expose port 3000

# - Run 'npm install'

# - Run 'npx create-react-app my-app'

# - Change working directory to 'my-app'

# - Copy your customized 'app.js' file to /src folder (you should take the sample 'app.js' file and maybe add your info just to show it was customized)

# - Start the container with CMD ["npm", "start"]

# - in the end you should be using FROM, RUN, WORKDIR, COPY, EXPOSE, and CMD commands


#  ******* Build, Tag and Push Image to Docker Hub *****

# From the directory that has this Dockerfile issue the Docker build command below. Repalace react-app with your image name. Note the trailing '.' it is part of the command

	# docker image build -t react-app .

# Check the image with the command:  docker image ls
	#You will see the image you built

# Tag the Docker image
	# docker tag react-app your-docker-id/react-app:1.0
	# replace your-docker-id with yours and react-app with the name of your image

# Push image to Docker hub
	# docker login
		#supply your username and password at the prompt if you are not already logged on

		# docker push your-docker-id/react-app:1.0


# ****** Test Your Image *********

# docker container run -p 3000:3000 -d your-docker-id/react-app:1.0

# Open your browser and go to port 3000 of your host machine. Confirm that your customizations worked. 
# Congrats if it worked. If however it showed the default React App page, it means that you did not copy the custom app.js into /src directory.

# You can get a custom app.js file from the github repository
	# https://github.com/calistus-igwilo/react_app_docker/tree/master/src

# Prepared by Calistus Igwilo (https://linkedin/in/calistus-igwilo)