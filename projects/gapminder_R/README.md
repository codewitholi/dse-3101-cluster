# gapminder

This sample R Shiny App code provides visualization for the [Gapminder](https://appsilon.com/r-dplyr-gapminder/) dataset that
tracks average life expectancy over time.

Application code comes from this [blog post](https://www.appsilon.com/post/r-shiny-docker-getting-started) by Dario Radecic

## Running Docker containers

### Using the original Dockerfile

```bash
# Build image
docker build -t app-orig . -f Dockerfile.Original
# Run container with the new image
docker run -p 8180:8180 --rm -it app-orig
```

## With Scripts and amended Dockerfile

```bash
# Build the image
./scripts/build-image.sh

# Run the image interactively
./scripts/run-image.sh
```

## Docker Compose

```bash
# Run containers in `docker-compose.yaml` in detached mode
docker compose up -d
```

## Useful commands

```bash
# Check docker images
docker images
# Check running containers
docker ps

# Check running containers (including terminated ones)
docker ps -a

# Retrieve container logs
docker logs <container_name> --tail=100 -f
```