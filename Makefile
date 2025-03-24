# CONTAINER_TOOL defines the container tool to be used for building images.
# Be aware that the target commands are only tested with Docker which is
# scaffolded by default. However, you might want to replace it to use other
# tools. (i.e. podman)
CONTAINER_TOOL ?= docker

# Docker image name for the mkdocs based local development setup
IMAGE=ironcore-dev/multi-repo-docs

.PHONY: start-docs
start-docs: ## Start the local mkdocs based development environment.
	$(CONTAINER_TOOL) build -t ${IMAGE} -f docs/Dockerfile . --load
	$(CONTAINER_TOOL) run -p 8000:8000 -v `pwd`/:/docs ${IMAGE}

.PHONY: clean-docs
clean-docs: ## Remove all local mkdocs Docker images (cleanup).
	$(CONTAINER_TOOL) container prune --force --filter "label=project=ironcore_project_multi_repo_docs"
