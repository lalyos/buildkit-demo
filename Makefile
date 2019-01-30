build:
	docker build -t tmp .

update:
	sed -i "s/date: [^\.]*\./date: $(shell date +%Y-%m-%d_%H:%M:%S)./" main.go

buildkit:
	DOCKER_BUILDKIT=1 docker build -t tmp -f Dockerfile.buildkit .