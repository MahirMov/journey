
#!/bin/bash

docker stop my-server 2>/dev/null
docker rm my-server 2>/dev/null

docker build -t my-server .

docker run -d -p 80:80 --name my-server my-server

echo "deployed!"
