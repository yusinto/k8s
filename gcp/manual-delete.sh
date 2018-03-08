#!/usr/bin/env bash
_DELETE_BRANCH_NAME=$1

kubectl delete deployment $_DELETE_BRANCH_NAME-deployment
kubectl delete service $_DELETE_BRANCH_NAME-service

for digest in $(gcloud container images list-tags gcr.io/yus-demo/$_DELETE_BRANCH_NAME --format='get(digest)');
    do gcloud container images delete -q --force-delete-tags gcr.io/yus-demo/$_DELETE_BRANCH_NAME@${digest};
    done
gcloud logging logs delete -q projects/yus-demo/logs/$_DELETE_BRANCH_NAME
