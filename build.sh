# Pull base Docker image
docker pull crunchydata/crunchy-pgadmin4:centos7-10.5-2.1.0

# Tag Docker Image according to DP standard for GCR usage
docker tag crunchydata/crunchy-pgadmin4:centos7-10.5-2.1.0 <DOCKER_REGISTRY>/metabase.docker.pgadmin4:latest

# Delete generic base Docker image
docker rmi crunchydata/crunchy-pgadmin4:centos7-10.5-2.1.0 
