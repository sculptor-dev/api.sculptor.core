#!/bin/bash
source ./deploy-envs.sh

#AWS_ACCOUNT_NUMBER={} set in private variable
export AWS_ECS_REPO_DOMAIN=$AWS_ACCOUNT_NUMBER.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com
echo $AWS_ACCOUNT_NUMBER
echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
echo $COVERALLS_REPO_TOKEN
echo $DOTNET_SKIP_FIRST_TIME_EXPERIENCE

# Build process
docker build -t $IMAGE_NAME ../../
docker tag $IMAGE_NAME $AWS_ECS_REPO_DOMAIN/$IMAGE_NAME:$IMAGE_VERSION
