#!/usr/bin/env bash
set -e

function exists() {
    which $1 &> /dev/null
}

if ! exists docker; then
    echo "Docker is required for this project, please install Docker:\n"

    echo "https://docs.docker.com/engine/install/"

    exit 1
elif [[ ! -d "$PWD/dockerised-fabric/" || ! "$(basename $PWD)" = "dockerised-fabric" ]]; then
    if exists gh || exists git; then
        if exists gh; then
            gh repo clone cyrus01337/dockerised-fabric
        elif exists git; then
            git clone https://github.com/cyrus01337/dockerised-fabric.git
        fi

        cd dockerised-fabric/
    elif exists wget || exists curl; then
        if exists wget; then
            wget https://github.com/cyrus01337/dockerised-fabric/archive/refs/heads/main.zip
        elif exists curl; then
            curl -L https://github.com/cyrus01337/dockerised-fabric/archive/refs/heads/main.zip
        fi

        cd dockerised-fabric-main/
    else
        echo "One of the following tools must be installed for this script to run, please install from the list:\n"

        echo "- github-cli"
        echo "- git"
        echo "- wget"
        echo "- curl\n"

        exit 1
    fi
fi

docker build -t fabric .
