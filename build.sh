#!/bin/bash

docker buildx build --push --platform linux/arm64,linux/amd64 --build-arg IMAGE=kodacd/argo-rollouts-demo-api -t kodacd/argo-rollouts-demo-api:v1 --build-arg IMAGE_TAG=v1 .
docker buildx build --push --platform linux/arm64,linux/amd64 --build-arg IMAGE=kodacd/argo-rollouts-demo-api -t kodacd/argo-rollouts-demo-api:v2 --build-arg IMAGE_TAG=v2 .
docker buildx build --push --platform linux/arm64,linux/amd64 --build-arg IMAGE=kodacd/argo-rollouts-demo-api -t kodacd/argo-rollouts-demo-api:v3 --build-arg IMAGE_TAG=v3 .
docker buildx build --push --platform linux/arm64,linux/amd64 --build-arg IMAGE=kodacd/argo-rollouts-demo-api -t kodacd/argo-rollouts-demo-api:v4 --build-arg IMAGE_TAG=v4 .