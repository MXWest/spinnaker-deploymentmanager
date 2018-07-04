#!/usr/bin/env bash
#
#
set -e
cd ..
. spin-env.sh
export JENKINS_PASSWORD=$(openssl rand -base64 15)
echo "Jenkins password is ${JENKINS_PASSWORD}"
echo "Create deployment from config.jinja:"
gcloud deployment-manager deployments create --template config.jinja ${DEPLOYMENT_NAME} --properties jenkinsPassword:${JENKINS_PASSWORD}
export SPINNAKER_VM=$(gcloud compute instances list --filter="name~${DEPLOYMENT_NAME}-spinnaker.+" --uri)
echo "Spinnaker VM is at ${SPINNAKER_VM}"
