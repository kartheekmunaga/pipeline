o "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u kmunaga001 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG kmunaga001/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push kmunaga001/$IMAGE:$BUILD_TAG
