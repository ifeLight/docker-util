# This Dockerfile creates a minimal Alpine-based image with curl, jq, git, wget, unzip, python3, py3-pip, mysql-client, postgresql-client, openssh-client, openssl, redis, and mongodb-tools and other utilities.
# It installs the necessary packages and sets the default command to keep the container running.
# You can build this Dockerfile using the command:
# docker build -t utils .
# You can run the container using:
# docker run -it utils
# You can also customize the CMD to run specific AWS CLI commands or scripts as needed.
# Note: Ensure that you have Docker installed and running on your machine to build and run this Dockerfile.
# This Dockerfile is designed to create a lightweight container with essential tools for AWS CLI operations.

FROM alpine:latest
LABEL maintainer="Ifedayo Kaim <karimjnr@gmail.com>"
LABEL description="A minimal Alpine-based image with Python, AWS CLI, and utilities."
LABEL repository="https://github.com/ifelight/docker-util"


RUN apk add --no-cache \
    bash \
    curl \
    jq \
    git \
    wget \
    unzip \
    python3 \
    py3-pip \
    mysql-client \
    postgresql-client \
    openssh-client \
    openssl \
    redis \
    mongodb-tools \
    iproute2 \
    dnsutils


CMD ["sleep", "infinity"]
