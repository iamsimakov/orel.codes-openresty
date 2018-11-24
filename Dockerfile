FROM openresty/openresty:latest

RUN mkdir -p \
    /app/logs/ \
    /app/conf/

WORKDIR /app

COPY nginx.conf get.lua post.lua post_lib.lua ./conf/

EXPOSE 80

CMD ["nginx", "-p", "/app/", "-c", "/app/conf/nginx.conf", "-g", "\"daemon off;\""]
