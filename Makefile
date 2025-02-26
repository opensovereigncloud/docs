# Docker image name for the mkdocs based local development setup
IMAGE=ironcore-dev/multi-repo-docs

.PHONY: serve
serve:
	podman build -t $(IMAGE) -f docs/Dockerfile . --load
	podman run --network=host -v `pwd`/:/docs $(IMAGE)

.PHONY: clean
clean:
	podman container prune --force --filter "label=project=multi_repo_docs"
