#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u vikasj003 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG vikasj003/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push vikasj003/$IMAGE:$BUILD_TAG
