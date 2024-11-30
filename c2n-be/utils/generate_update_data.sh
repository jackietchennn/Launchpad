#!/bin/bash
# usage:
#  ./generate_update_data.sh [json_file] [server_url]
#  sh generate_update_data.sh '{"saleAddress":"0x854D2A5697857E1c7d085ae3649bFC5d02F9a483","saleToken":"0x8332c63860eBAf9eCb1e61fb1829C76D2B2A1cB7","saleOwner":"0x0f590970a45d0b4c2dcfcaFF453400eE9B91B317","tokenPriceInEth":"100000000000","totalTokens":"10000000000000000000000","saleEndTime":1715244920,"tokensUnlockTime":1715244729,"registrationStart":1715243300,"registrationEnd":1715243600,"saleStartTime":1715243720}' 118.31.71.100:8080

# SERVER_URL 默认值为 localhost:30001
JSON1=$1
SERVER_URL=${2:-"localhost:30001"}

echo "SERVER_URL: $SERVER_URL"
echo "request json: $JSON1"

# 转换 JSON1 到 JSON2
JSON2=$(jq -c '. + {"id": 3} | .tokenPriceInPT = .tokenPriceInEth | del(.tokenPriceInEth) | .saleEndTime = (.saleEndTime | tostring + "000") | .tokensUnlockTime = (.tokensUnlockTime | tostring + "000") | .registrationStart = (.registrationStart | tostring + "000") | .registrationEnd = (.registrationEnd | tostring + "000") | .saleStartTime = (.saleStartTime | tostring + "000")' <<< "$JSON1")

echo "Transformed JSON: $JSON2"

# 执行 curl 命令
curl -X POST http://${SERVER_URL}/boba/update -H "Content-Type: application/json" -d "$JSON2"
