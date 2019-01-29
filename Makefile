build:
	docker build -t tmp .

update:
	sed -i "s/date: [^\.]*\./date: $(date +%Y-%m-%d_%H:%M:%S)./" main.go

buildkit:
	export DOCKER_BUILDKIT=1