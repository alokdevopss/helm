FROM node
WORKDIR /app
COPY package.json .
RUN apt-get update
# RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]

# # Pull the minimal Ubuntu image
# FROM ubuntu

# # Install Nginx
# RUN apt-get -y update && apt-get -y install nginx

# # Copy the Nginx config
# COPY default /etc/nginx/sites-available/default

# # Expose the port for access
# EXPOSE 80/tcp

# # Run the Nginx server
# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]


# FROM node:10-alpine
# WORKDIR /app
# COPY package.json .
# RUN apk add --update git
# RUN npm install
# COPY . .
# EXPOSE 8080
# CMD ["node", "node_server.js" ]
