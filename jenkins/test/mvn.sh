WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/maven-pipeline

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
