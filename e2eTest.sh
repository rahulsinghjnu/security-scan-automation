#!/bin/bash

# Send some request through zap proxy
curl -k https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy http://localhost:8080

sleep 2

# Get Stats from ZAP
curl -X GET http://localhost:8080/JSON/stats/view/allSitesStats/ \
  -H 'Accept: application/json' \
  -H 'X-ZAP-API-Key: ivfost7amnh5relkujqat6pe14'