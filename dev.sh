
# Conda environment
EXPECTED_CONDA_ENV=nmx-live
if [ "$EXPECTED_CONDA_ENV" = "$CONDA_DEFAULT_ENV" ]; then
    echo "Right conda environment. Proceed..."
elif $(conda env list | grep -q $EXPECTED_CONDA_ENV); then
    echo "Found the conda environment, activating ${EXPECTED_CONDA_ENV}"
    conda activate ${EXPECTED_CONDA_ENV}
else
    echo "No conda environment found."
    echo "Probably installation is missing."
    echo "Run the following command to install dependencies."
    echo "    source install.sh > install.log"
fi

export BEAMLIME_INSTRUMENT=nmx
export KAFKA_BOOTSTRAP_SERVERS="localhost:9093"
export BEAMLIME_ENV=dev
python -m beamlime.services.fake_detectors --instrument nmx
