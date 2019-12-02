#!/bin/sh
# Get the registration token from:
# http://localhost:8080/root/${project}/settings/ci_cd

registration_token=UzYM_mUEEgPP1GTrQqtY

sudo gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description shell \
    --url http://192.168.0.192:9999 \
    --executor shell \
    # --docker-image docker:stable \
    # --docker-volumes "/var/run/docker.sock"
    # --docker-network-mode gitlab-sonar-network
