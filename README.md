# Redis Stunnel Docker Container
This docker image can be used in a deployment step to purge an Azure Redis cache as needed.

## Requirements
The deployment server just needs the redis-cli installed

## Usage
### Build the image
Build the image like any other Docker image
`docker build . -t cspace/redisstunnel:VERSION`

### Run the image
`docker run -d -e CONNECT=<<hostname of Azure Redis Cache>> -p 6380:6380 --name stunnel cspace/redisstunnel`

### Connect through the container
`redis-cli -h CONTAINER_HOST_NAME -p 6380 -a CACHE_ACCESS_KEY`

You can directly run commands without opening a shell

`redis-cli -h CONTAINER_HOST_NAME -p 6380 -a CACHE_ACCESS_KEY dbsize`

## TODO
- Push to ACR from Azure DevOps
- Run container from Octopus, flush cache, remove container
- Run redis-cli in a container too?