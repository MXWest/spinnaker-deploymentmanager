#!/usr/bin/env bash
#
#
set -x
. ~/bin/spin-env.sh
export SPINNAKER_VM=$(gcloud compute instances list --filter="name~${DEPLOYMENT_NAME}-spinnaker.+" --uri)
gcloud compute ssh ${SPINNAKER_VM} -- sudo service front50 stop
gsutil rm -r gs://spinnaker-${GOOGLE_PROJECT}-${DEPLOYMENT_NAME}/front50
gsutil rb gs://spinnaker-${GOOGLE_PROJECT}-${DEPLOYMENT_NAME}
gcloud deployment-manager deployments delete ${DEPLOYMENT_NAME}
