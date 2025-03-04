# nmx-live

## Requirements

``docker-compose`` - It's probably already installed but if not, go to this [download page](https://docs.docker.com/compose/install/).


## How to run

Everything that needs to run `beamlime` are wrapped in these shell scripts, `install.sh` and `run.sh`.

You have to source these since some of steps need `conda`.

### Only once
```bash
source install.sh  # > install.log
```

### To run/restart the services
```bash
source run.sh  # > run.log
```

**Please check if any python processes are hanging even if you killed them.**
