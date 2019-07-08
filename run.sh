# Create Docker Volumes
docker volume create --driver local --name=metabase-pga4vol

# Create Docker Network
docker network create --driver bridge --subnet 172.0.0.0/29 metabase-network &>/dev/null || :

# Run Docker container
docker run --publish 5050:5050 \
  --volume=metabase-pga4vol:/var/lib/pgadmin \
  --env-file=pgadmin-env.list \
  --name="pgadmin4-metabase" \
  --hostname="pgadmin4-metabase" \
  --network="metabase-network" \
  --detach \
  fabianschyrer/metabase.docker.pgadmin4:latest
