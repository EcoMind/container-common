#!/usr/bin/env bash

docker_push() {
    local repoName=$1
    local localTag=$2
    local remoteTag=$3
    local remoteHost=$4

    remoteImage="$remoteHost/$repoName:$remoteTag"
    docker tag "$repoName:$localTag" "$remoteImage"
    docker push "$remoteImage"
}
