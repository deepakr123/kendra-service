FROM node:12

WORKDIR /manage-learn-services/kendra-service

#copy package.json file
COPY package.json /manage-learn-services/kendra-service

#install node packges
RUN npm install

#copy all files 
COPY . /manage-learn-services/kendra-service

#expose the application port
EXPOSE 4202

#start the application
CMD node app.js