#!/bin/bash

# set environment variables used in deploy.sh and AWS task-definition.json:
export IMAGE_NAME=api-sculptor-core
export IMAGE_VERSION=latest

export AWS_DEFAULT_REGION=us-east-1
export AWS_ECS_CLUSTER_NAME=default
export AWS_VIRTUAL_HOST=api.core.sculptor.dev
export LETSENCRYPT_HOST=$AWS_VIRTUAL_HOST
export LETSENCRYPT_EMAIL=self@tuckerle.in
