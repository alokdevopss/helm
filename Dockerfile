FROM node
WORKDIR /usr/src/app
COPY package*.json app.js ./
RUN npm install
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
