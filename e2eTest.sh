#!/bin/bash


ZAP_PROXY="127.0.0.1:8090"

# Send some request through zap proxy
curl -k https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy $ZAP_PROXY
curl -k https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy $ZAP_PROXY
curl -k https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy $ZAP_PROXY

export HTTPS_PROXY="$ZAP_PROXY"
newman run TestCollection.postman_collection.json --env-var "HTTPS_PROXY=$HTTPS_PROXY" --insecure

echo "sleep for 10 sec"
sleep 10

# Get Stats from ZAP
curl -X GET http://localhost:8090/JSON/stats/view/allSitesStats/ \
  -H 'Accept: application/json' \
  -H 'X-ZAP-API-Key: 12345'