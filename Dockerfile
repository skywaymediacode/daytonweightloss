FROM nginx:alpine

# Copy all HTML files to Nginx's default directory
COPY . /usr/share/nginx/html/

# Remove the default Nginx config and use a simple one
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
