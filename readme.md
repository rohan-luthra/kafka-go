A kakfa consumer and producer golang application.

Setup - 

# To start the kafka cluser
sudo MY_IP={YOUR_DOCKER_HOST_IP} docker-compose -f docker-compose-kafka.yml up

# Install dependencies
$ go get -u github.com/golang/dep/cmd/dep

$ dep ensure -v

# Run the main file
$ go run src/api/main.go.

Post you data on loclhost:9000/api/v1/data as { "text": "Your Text Message"  }

# To run go server in docker
sudo MY_IP={YOUR_DOCKER_HOST_IP} docker-compose -f docker-compose.yml up

ENJOY :D






