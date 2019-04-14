#!/bin/bash
#TokenString=mwrlXN0u-NO64kaSdzfNScC3Vtz6jPKNs7yRHEUJGq
#curl -X POST -H 'Content-Type: application/json' -H 'Authorization: Bearer mwrlXN0u-NO64kaSdzfNScC3Vtz6jPKNs7yRHEUJGqQ' https://192.168.99.100:8443/apis/build.openshift.io/v1/namespace/wspark/buildconfigs/simple-app/instantiate  --insecure --data @start-build.json
curl -X POST -H 'Content-Type: application/json' -H 'Authorization: Bearer mwrlXN0u-NO64kaSdzfNScC3Vtz6jPKNs7yRHEUJGqQ' https://192.168.99.100:8443/apis/build.openshift.io/v1/namespace/wspark/buildconfigs/simple-app/instantiate  --insecure --data @start-build.json
