# mytrello-data-server
Docker container for json-server (https://github.com/typicode/json-server) based on the work of Christian Lück <christian@lueck.tv> (https://github.com/clue/docker-json-server)
 

docker build -t mytrello-data-server .

docker run -d -p 3000:3000 -v %cd%/MyTrello.json:/data/MyTrello.json mytrello-data-server

curl -i -L -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost:3000/boards