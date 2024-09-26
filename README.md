# Dockerised Fabric

Fabric offers a system for running prompting patterns through AI, with support for varying models. I'm not an expert, so you can read more about it [here.](https://github.com/danielmiessler/fabric)

## Pre-requisites

- [Docker](https://docs.docker.com/engine/install/)
- GitHub CLI (`gh`)/`git`
- `wget`/`curl`
- Relevant AI API keys (OpenAI, Ollama to name a few...)

## Setup

```sh
curl https://raw.githubusercontent.com/cyrus01337/dockerised-fabric/refs/heads/main/install.sh | bash
docker run --rm -iv ~/.config/fabric/:/root/.config/fabric/ fabric --setup
```

## Usage

```sh
echo "Summarise MacBeth in <100 words" | docker run --rm -iv ~/.config/fabric/:/root/.config/fabric/ fabric -sp ai
```

## License

This project shares [the same licensing](https://github.com/danielmiessler/fabric/blob/main/LICENSE) as Fabric, for brevity you can view it [here.](https://github.com/cyrus01337/dockerised-fabric/blob/main/LICENSE)

