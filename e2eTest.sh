#!/bin/bash

# Send some request through zap proxy
curl -k https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy http://localhost:8090
curl -k https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy http://localhost:8090
curl -k https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy http://localhost:8090

echo "sleep for 10 sec"
sleep 10

# Get Stats from ZAP
curl -X GET http://localhost:8090/JSON/stats/view/allSitesStats/ \
  -H 'Accept: application/json' \
  -H 'X-ZAP-API-Key: 12345'