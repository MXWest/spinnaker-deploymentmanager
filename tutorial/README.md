# Spinnaker Tutorial
I've added this directory to provide a few scripts to this fork
to help get spinnaker up and running using Google's Deployment
Manager.

This is an _expedient_ to get _a_ Spinnaker up and running.

Its intent is to get you started more quickly with
[Continuous Deployment on Compute Engine Using Ansible with Spinnaker](https://cloud.google.com/solutions/ansible-with-spinnaker-tutorial).


## Pre-Requisites
The tutorial calls for you to run the terminal commands from
cloud shell, which you're more than welcome to do. I prefer
automatic, though.

* These scripts simply use whatever your current project is.
Use `gcloud info` to be sure you're where you want to be.

* `$GOOGLE_CREDENTIALS` for a service account that
has (at least) the following permissions for:
  * Compute Instance Admin (v1)
  * Compute Network Admin
  * Compute Storage Admin
  * Storage Admin


## Deployment
Run the script `00-spin-build.sh`. This will stand up
3 instance groups: a Jenkins, a redis and a Spinnaker. In turn
each of these instance groups will contain 1 VM.

## Running
`spin-connect.sh` Opens an `ssh` session to Spinnaker box and tunnels ports `8081` (The
Spinnaker UI) and `8082` (Jenkins UI).

## Destroying
`spin-destroy.sh` will destroy all of the resources. Takes about 3
and half minutes.

## Where is the Spinnaker API?
`spin-get-api-ip.sh`

## GitHub Secret Creator
`spin-gh-webhook-secret.sh` is a helper to create a secret for you.

