# background service set-up
echo "Setting up kafka configuration."
echo "It will delete all topics related to beamlime."
docker compose -f docker-compose-minimal.yml up --remove-orphans -d

# Clone beamlime
if [ -d "beamlime" ]; then
    echo "beamlime exist"
else
    echo "beamlime is not cloned yet. Cloning..."
    git clone https://github.com/scipp/beamlime.git
fi

# Change all boot strap server urls
cd beamlime/src/beamlime/config/defaults/
sed -i 's/localhost:9092/localhost:9093/g' *
cd -

echo "Preparation all set up."
echo "Run the following command to run the rest of services:"
echo "    source run.sh  # > run.log"
