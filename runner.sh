#!/bin/sh
# Get the registration token from:
# http://localhost:8080/root/${project}/settings/ci_cd

registration_token=WhbG8HzvzGditSMPR1bR

docker exec -it gitlab-runner \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url http://gitlab:9999 \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock"
    # --docker-network-mode gitlab-sonar-network
