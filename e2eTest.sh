#!/bin/bash

# Send some request through zap proxy
curl https://reqbin.com/echo/get/json -H "Accept: application/json" --proxy http://localhost:8090

# Get Stats from ZAP
curl -X GET http://localhost:8090/JSON/stats/view/allSitesStats/ \
  -H 'Accept: application/json' \
  -H 'X-ZAP-API-Key: API_KEY'