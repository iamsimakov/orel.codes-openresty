FROM openresty/openresty:latest

RUN mkdir -p \
    /app/logs/ \
    /app/conf/

WORKDIR /app

COPY nginx.conf get.lua post.lua post_lib.lua ./

EXPOSE 80

CMD ["nging", "-p", "/app/", "-c", "/app/conf/nginx.conf"]
