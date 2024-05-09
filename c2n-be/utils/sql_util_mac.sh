#!/bin/bash

# usage:
# sh sql_util_linux.sh '{"saleAddress": "0x854D2A5697857E1c7d085ae3649bFC5d02F9a483", "saleToken": "0x8332c63860eBAf9eCb1e61fb1829C76D2B2A1cB7", "saleOwner": "0x0f590970a45d0b4c2dcfcaFF453400eE9B91B317", "tokenPriceInEth": "100000000000", "totalTokens": "10000000000000000000000", "saleEndTime": 1715244920, "tokensUnlockTime": 1715244729, "registrationStart": 1715243300, "registrationEnd": 1715243600, "saleStartTime": 1715243720 }'
# INSERT INTO product_contract (`id`,`name`,`description`,`img`,`twitter_name`,`status`,`amount`, `sale_contract_address`, `token_address`,`payment_token`,`follower`,`tge`, `project_website`,`about_html`,`registration_time_starts`,`registration_time_ends`,`sale_start`,`sale_end`,`max_participation`, `token_price_in_PT`,`total_tokens_sold`,`amount_of_tokens_to_sell`,`total_raised`,`symbol`,`decimals`,`unlock_time`,`medias`, `number_of_registrants`,`vesting`,`tricker`,`token_name`,`roi`,`vesting_portions_unlock_time`,`vesting_percent_per_portion`, `create_time`,`update_time`,`type`,`card_link`,`tweet_id`,`chain_id`,`payment_token_decimals`,`current_price`) VALUES (3,'pcontract_3','pcontract_3 desc','/img/pc_3.jpg','david',0,'10000000000000000000000', '0x854D2A5697857E1c7d085ae3649bFC5d02F9a483', '0x8332c63860eBAf9eCb1e61fb1829C76D2B2A1cB7','200',0,'2024-05-09 16:52:09', 'http://404.com','http://404.com/about.html','2024-05-09 16:28:20','2024-05-09 16:33:20','2024-05-09 16:35:20','2024-05-09 16:55:20','10', '100000000000','1','30','111','MCK',18,'2024-05-09 16:52:09',null, 1,null,null,'DemoToken1','1',null,null, '2024-04-25T12:25:07','2024-05-06T12:27:31',0,'http://card_link2.com','tweet_id_1',11155111,18,0);

json=$1

#json='{
#  "saleAddress": "0x21eb499756E69d49D866d494e111881767897ad2", // saleContractAddress
#  "saleToken": "0x8332c63860eBAf9eCb1e61fb1829C76D2B2A1cB7", // tokenAddress
#  "saleOwner": "0x0f590970a45d0b4c2dcfcaFF453400eE9B91B317", // tokenAddress
#  "tokenPriceInEth": "100000000000", // tokenPriceInPT
#  "totalTokens": "10000000000000000000000", // amount
#  "saleEndTime": 1715242388, // saleEnd
#  "tokensUnlockTime": 1715244469, // tge
#  "registrationStart": 1715240069, // registrationTimeStarts
#  "registrationEnd": 1715241068, // registrationTimeEnds
#  "saleStartTime": 1715241188 // saleStart
#}'
#json='{
#  "saleAddress": "0x21eb499756E69d49D866d494e111881767897ad2",
#  "saleToken": "0x8332c63860eBAf9eCb1e61fb1829C76D2B2A1cB7",
#  "saleOwner": "0x0f590970a45d0b4c2dcfcaFF453400eE9B91B317",
#  "tokenPriceInEth": "100000000000",
#  "totalTokens": "10000000000000000000000",
#  "saleEndTime": 1715242388,
#  "tokensUnlockTime": 1715244469,
#  "registrationStart": 1715240069,
#  "registrationEnd": 1715241068,
#  "saleStartTime": 1715241188
#}'

saleAddress=$(echo $json | jq -r '.saleAddress')
saleToken=$(echo $json | jq -r '.saleToken')
saleOwner=$(echo $json | jq -r '.saleOwner')
tokenPriceInEth=$(echo $json | jq -r '.tokenPriceInEth')
totalTokens=$(echo $json | jq -r '.totalTokens')
saleEndTime=$(echo $json | jq -r '.saleEndTime')
tokensUnlockTime=$(echo $json | jq -r '.tokensUnlockTime')
registrationStart=$(echo $json | jq -r '.registrationStart')
registrationEnd=$(echo $json | jq -r '.registrationEnd')
saleStartTime=$(echo $json | jq -r '.saleStartTime')

# Convert timestamps to human-readable dates
saleEndTime=`date -r $saleEndTime +"%Y-%m-%d %H:%M:%S"`
tokensUnlockTime=`date -r $tokensUnlockTime +"%Y-%m-%d %H:%M:%S"`
registrationStart=`date -r $registrationStart +"%Y-%m-%d %H:%M:%S"`
registrationEnd=`date -r $registrationEnd +"%Y-%m-%d %H:%M:%S"`
saleStartTime=`date -r $saleStartTime +"%Y-%m-%d %H:%M:%S"`

# Construct the SQL statement
insert_sql="INSERT INTO product_contract
(\`id\`,\`name\`,\`description\`,\`img\`,\`twitter_name\`,\`status\`,\`amount\`,
 \`sale_contract_address\`,
 \`token_address\`,\`payment_token\`,\`follower\`,\`tge\`,
 \`project_website\`,\`about_html\`,\`registration_time_starts\`,\`registration_time_ends\`,\`sale_start\`,\`sale_end\`,\`max_participation\`,
 \`token_price_in_PT\`,\`total_tokens_sold\`,\`amount_of_tokens_to_sell\`,\`total_raised\`,\`symbol\`,\`decimals\`,\`unlock_time\`,\`medias\`,
 \`number_of_registrants\`,\`vesting\`,\`tricker\`,\`token_name\`,\`roi\`,\`vesting_portions_unlock_time\`,\`vesting_percent_per_portion\`,
 \`create_time\`,\`update_time\`,\`type\`,\`card_link\`,\`tweet_id\`,\`chain_id\`,\`payment_token_decimals\`,\`current_price\`)
VALUES
    (3,'pcontract_3','pcontract_3 desc','/img/pc_3.jpg','david',0,'10000000000000000000000',
     '$saleAddress',
     '$saleToken','200',0,'$tokensUnlockTime',
     'http://404.com','http://404.com/about.html','$registrationStart','$registrationEnd','$saleStartTime','$saleEndTime','10',
     '$tokenPriceInEth','1','30','111','MCK',18,'$tokensUnlockTime',null,
     1,null,null,'DemoToken1','1',null,null,
     '2024-04-25T12:25:07','2024-05-06T12:27:31',0,'http://card_link2.com','tweet_id_1',11155111,18,0);"

echo ""
echo ""
echo ""

echo "delete from product_contract where id = 3;"

echo $insert_sql
