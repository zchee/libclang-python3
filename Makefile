DOCKER_CMD := docker

GIT_BRANCH := $(shell git branch | sed 's/*/ /' | grep -v 'master' | grep -v 'old')

default:

test/master:
	docker run --rm zchee/libclang-python3:latest

test/3.6:
	docker run --rm zchee/libclang-python3:$(subst test/,,$@)

test/3.7:
	docker run --rm zchee/libclang-python3:$(subst test/,,$@)

test/3.8:
	docker run --rm zchee/libclang-python3:$(subst test/,,$@)

build/stable:
	@set -e; \
		for version in $(GIT_BRANCH); \
		do docker build --build-arg LLVM_VERSION=$$version -t zchee/libclang-python3:$$version -f Dockerfile.stable .; \
		done || exit 1

build/master:
	@set -e; \
		docker build -t zchee/libclang-python3:latest -f Dockerfile.master . || exit 1

build/3.6:
	@set -e; \
		docker build --rm --build-arg LLVM_VERSION=$(subst build/,,$@) -t zchee/libclang-python3:$(subst build/,,$@) -f Dockerfile.stable . || exit 1

build/3.7:
	@set -e; \
		docker build --rm --build-arg LLVM_VERSION=$(subst build/,,$@) -t zchee/libclang-python3:$(subst build/,,$@) -f Dockerfile.stable . || exit 1

build/3.8:
	@set -e; \
		docker build --rm --build-arg LLVM_VERSION=$(subst build/,,$@) -t zchee/libclang-python3:$(subst build/,,$@) -f Dockerfile.stable . || exit 1

rebase:
	# set -e; for branch in $(GIT_BRANCH); do git checkout $$branch; git rebase origin/master --autostash; done || exit 1
	# git checkout 
