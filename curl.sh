#!/bin/bash
TokenString=mwrlXN0u-NO64kaSdzfNScC3Vtz6jPKNs7yRHEUJGqQ
curl -X POST -H 'Content-Type: application/json' -H 'Authorization: Bearer $TokenString' https://192.168.99.100:8443/apis/build.openshift.io/v1/namespaces/wspark/buildconfigs/simple-app/instantiate --insecure --data @start-build.json
#oc login https://192.168.99.100:8443 --token=mwrlXN0u-NO64kaSdzfNScC3Vtz6jPKNs7yRHEUJGqQ
