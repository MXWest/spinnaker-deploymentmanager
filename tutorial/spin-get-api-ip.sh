#!/usr/bin/env bash
. spin-env.sh
gcloud compute forwarding-rules list --regexp="${DEPLOYMENT_NAME}-spinnaker-api-lb"
