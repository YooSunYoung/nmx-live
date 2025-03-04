export BEAMLIME_INSTRUMENT=nmx
export KAFKA_BOOTSTRAP_SERVERS="localhost:9093"
export BEAMLIME_ENV=dev
# Run rest of the services
docker compose -f docker-compose-beamlime.yml up --remove-orphans
