
build

docker build ./

command run

docker run -d -p 3080:80 <IMAGE_ON_PREV_STEP> nginx -p /app -c /app/conf/nginx.conf -g "daemon off;"

test request

curl -X POST "http://localhost:3080/test" -d '{"k":"12"}' -H "Content-Type: application/json"

