# Dockerfiles Warehouse

## Commands
Build images with Dockerfile

	 docker build -t <name-of-image> -f <the-dockerfile.yaml> .

Show images:

	docker images

Run container with an image:

	docker run -it --rm <name-of-container> -v $PWD:/app -w /app <name-of-image> /bin/bash

## Automated build

Each images are built and available from the Docker Hub:

	docker pull st3w4r/dockerfiles-warehouse:<name-of-image>

The image name is the tag

To just start a built image use the command below:

	docker run -it --rm --name <name-of-container> -v $PWD:/app -w /app st3w4r/dockerfiles-warehouse:<name-of-image> /bin/bash
