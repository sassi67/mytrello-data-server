# mytrello-data-server
Docker container for json-server (https://github.com/typicode/json-server) based on the work of Christian Lück <christian@lueck.tv> (https://github.com/clue/docker-json-server)

## Prerequisites for Windows
To build and use the container on Windows remember to switch to the "Linux containers" mode

## To build the container
 - Clone this repository
 - Open the command prompt
 - Enter the cloned directory
 - docker build -t mytrello-data-server .

## To use the existing container without building it
An existing image has been published into the Docker Hub. To download it:
 - docker pull sassi67/mytrello-data-server:1.0

## To run the container
If the container is locally built:
 - docker run -d -p 3000:3000 -v %cd%/MyTrello.json:/data/MyTrello.json mytrello-data-server
If the container was pulled from The Docker Hub:
 - docker run -d -p 3000:3000 -v %cd%/MyTrello.json:/data/MyTrello.json sassi67/mytrello-data-server:1.0

## To test the container
 - Open the command prompt
 - curl -i http://localhost:3000/boards
Or:
 - Open the browser and type http://localhost:3000