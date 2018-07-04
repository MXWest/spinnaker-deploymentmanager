#!/usr/bin/env bash
#
#
export GH_WEBHOOK_SECRET=$(openssl rand -base64 15)
echo $GH_WEBHOOK_SECRET
