
FROM nginx:alpine


COPY default.conf /etc/nginx/conf.d/default.conf


COPY public/ /usr/share/nginx/html


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
