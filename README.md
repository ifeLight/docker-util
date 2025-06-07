# Docker Utils Image

This repository provides a **lightweight, Alpine-based Docker image** packed with essential utilities for development, operations, and cloud interactions. It's designed to be a versatile base for running various commands, scripts, and especially for interacting with cloud services like AWS.

## Features

This image includes the following pre-installed tools:

* **`bash`**: A powerful shell for scripting.
* **`curl`**: For making HTTP requests.
* **`jq`**: A lightweight and flexible command-line JSON processor.
* **`git`**: Version control system.
* **`wget`**: For retrieving content from web servers.
* **`unzip`**: To decompress archive files.
* **`python3` & `py3-pip`**: Python 3 and its package installer for running Python scripts and installing additional libraries.
* **`mysql-client`**: Command-line client for MySQL databases.
* **`postgresql-client`**: Command-line client for PostgreSQL databases.
* **`openssh-client`**: Secure Shell client for remote connections.
* **`openssl`**: A toolkit for TLS/SSL and cryptographic functions.
* **`redis`**: Redis command-line interface.
* **`mongodb-tools`**: Essential utilities for MongoDB.

## Getting Started

### Prerequisites

Make sure you have [Docker](https://docs.docker.com/get-docker/) installed and running on your machine.

### Getting the Image

You can get the image by cloning the repository or fetching the image from Docker hub:

To fetch the image:

```bash
docker pull ifelight/utils
```

To clone:

```bash
# Clone the repository
git clone https://github.com/ifelight/docker-util.git docker-util
cd docker-util
```

### Building the Image

To build the Docker image, navigate to the directory containing the `Dockerfile` and run:

```bash
docker build -t utils .
```

### Running the container

You can run an interactive session with the container using:

```bash
docker run -it --rm  utils bash
```

This will drop you into a bash shell inside the container, where you can use all the installed utilities.

### Customizing the Command

The default command for this container is sleep infinity, which keeps it running indefinitely. You can easily override this to execute specific commands or scripts.

For example, to run a Python script:

```bash
docker run -it --rm utils python3 my_script.py
```

Or to simply execute a shell command:

```bash
docker run -it --rm utils bash -c "ls -la /"
```

### Use Cases

- Development Environment: Quickly spin up a container with all your favorite CLI tools.
- CI/CD Pipelines: Use this image as a base for your CI/CD jobs that require these utilities.
- Cloud Operations: Ideal for running cloud CLI commands (e.g., AWS CLI, once installed) or automation scripts.
- Debugging: A quick way to get a consistent environment with networking and database tools.
