# nmx-live

## Requirements

``docker-compose`` - It's probably already installed but if not, go to this [download page](https://docs.docker.com/compose/install/).

``beamlime`` - Beamlime repository should be downloaded.
```bash
git clone https://github.com/scipp/beamlime.git
```

## Environment Variable

```bash
export BEAMLIME_INSTRUMENT="nmx"
export KAFKA_BOOTSTRAP_SERVERS=""
export KAFKA_SECURITY_PROTOCOL=""
export KAFKA_SASL_MECHANISM=""
export KAFKA_SASL_USERNAME=""
export KAFKA_SASL_PASSWORD=""
```

## Development
> This part is only for developers so please ignore if you're not a developer.

```bash
docker compose -f docker-compose-minimal.yml up
# Be careful that docker-compose may not work but docker compose works, vice versa.
```
