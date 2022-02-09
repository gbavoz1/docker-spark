#!/bin/bash
repo="hubnortheuropeacr.azurecr.io/spark"

echo "Building base image spark-base:${1}-h${2}-$3"
cd base
docker build -t $repo/spark-base:$1-h$2-$3 .
docker push ${repo}/spark-base:$1-h$2-$3

echo "Building master image spark-master:${1}-h${2}-$3"
cd ../master
docker build -t $repo/spark-master:$1-h$2-$3 .
docker push ${repo}/spark-master:$1-h$2-$3

echo "Building worker image spark-worker:${1}-h${2}-$3"
cd ../worker
docker build -t $repo/spark-worker:$1-h$2-$3 .
docker push ${repo}/spark-worker:$1-h$2-$3