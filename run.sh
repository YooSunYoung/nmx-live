export BEAMLIME_INSTRUMENT=nmx
export BEAMLIME_ENV=dev
# Run rest of the services
docker compose -f docker-compose-beamlime.yml up --remove-orphans
