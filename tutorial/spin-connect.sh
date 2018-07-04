#!/usr/bin/env bash
#
#
. spin-env.sh
set -x
export SPINNAKER_VM=$(gcloud compute instances list --filter="name~${DEPLOYMENT_NAME}-spinnaker.+" --uri)
gcloud compute ssh ${SPINNAKER_VM} -- -L 8081:localhost:8081 -L 8082:localhost:8082
