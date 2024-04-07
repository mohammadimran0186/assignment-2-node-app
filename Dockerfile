#Pulling the latest node docker image
FROM node:latest

#Here Iam checking out to /opt directory we can use custom directory as per the instructions given
WORKDIR /opt/server

#Copying main.js to specific folder we can choose any path ex: /app
COPY package.json /opt/server/  

#installing npm
RUN npm install

#Copying main.js to specific folder we can choose any path ex: /app
COPY main.js /opt/server/    


#Copying any other files 
COPY . .

#Exposing the web application on 3000 port as mentioned
EXPOSE 3000

#Running the service 
CMD ["node", "main.js"]


