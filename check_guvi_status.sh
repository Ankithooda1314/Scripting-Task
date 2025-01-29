#!/bin/bash

URL="https://www.guvi.in"


STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")


echo "HTTP Status Code: $STATUS_CODE"


if [[ "$STATUS_CODE" -ge 200 && "$STATUS_CODE" -lt 300 ]]; then
    echo "Success: The website is reachable."
else
    echo "Failure: The website returned an error."
fi
