
# create kafka-cluster
sudo MY_IP=172.18.0.1 docker-compose -f docker-compose-kafka.yml up

# start go server with kafka in dokcer
sudo MY_IP=172.18.0.1 docker-compose up