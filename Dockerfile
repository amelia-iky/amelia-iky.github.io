# base image
FROM nginx:latest

# create path and add index.html
WORKDIR /usr/share/nginx/html

# copy all files
COPY . .

# create index
RUN touch index.html

# expose port
EXPOSE 80

# run nginx
CMD ["nginx", "-g", "daemon off;"]