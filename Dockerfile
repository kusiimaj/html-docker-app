# Use the official Nginx image from DockerHub
FROM nginx:latest

# Set the working directory to the default Nginx HTML folder
WORKDIR /usr/share/nginx/html

# Remove the default index.html file
RUN rm -rf ./*

# Copy all files from our project directory to the Nginx HTML directory
COPY . .

# Expose port 80 (default Nginx port)
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
