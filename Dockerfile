
FROM node:18


WORKDIR /app


COPY package*.json ./


RUN npm install


COPY . .


EXPOSE 3000


CMD ["npm", "start"]

#env - 
#  [  
#     PORT=3000
#     MONGODB_URI=mongodb://host.docker.internal:27017/votingDB
#     JWT_SECRET=your_jwt_secret 
#  ]
