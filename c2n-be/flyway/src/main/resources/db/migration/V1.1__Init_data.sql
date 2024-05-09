INSERT INTO product_contract
(`id`,`name`,`description`,`img`,`twitter_name`,`status`,`amount`,`sale_contract_address`,`token_address`,`payment_token`,`follower`,`tge`,`project_website`,`about_html`,`registration_time_starts`,`registration_time_ends`,`sale_start`,`sale_end`,`max_participation`,`token_price_in_PT`,`total_tokens_sold`,`amount_of_tokens_to_sell`,`total_raised`,`symbol`,`decimals`,`unlock_time`,`medias`,`number_of_registrants`,`vesting`,`tricker`,`token_name`,`roi`,`vesting_portions_unlock_time`,`vesting_percent_per_portion`,`create_time`,`update_time`,`type`,`card_link`,`tweet_id`,`chain_id`,`payment_token_decimals`,`current_price`)
VALUES
    (1,'pcontract_1','pcontract_1 desc','/img/pc_1.jpg','david',0,'10000000000000000000000','0xbE1f0717E4Bfd6b3cAE527a543FdbA049671902f','0x8332c63860eBAf9eCb1e61fb1829C76D2B2A1cB7','200',0,'2024-12-17T00:17:42','http://404.com','http://404.com/about.html','2024-04-29T12:44:22','2024-08-11T16:44:22','2024-08-11T16:54:22','2024-08-12T16:54:22','10','100000000000','1','30','111','MCK',18,'2024-12-17T00:17:42',null,1,null,null,'DemoToken1','1',null,null,'2024-04-25T12:25:07','2024-05-06T12:27:31',1,'http://card_link1.com','tweet_id_1',11155111,18,0);


INSERT INTO `product_contract`
(`id`, `name`, `description`, `img`, `twitter_name`, `status`, `amount`, `sale_contract_address`, `token_address`, `payment_token`, `follower`, `tge`, `project_website`, `about_html`, `registration_time_starts`, `registration_time_ends`, `sale_start`, `sale_end`, `max_participation`, `token_price_in_PT`, `total_tokens_sold`, `amount_of_tokens_to_sell`, `total_raised`, `symbol`, `decimals`, `unlock_time`, `medias`, `number_of_registrants`, `vesting`, `tricker`, `token_name`, `roi`, `vesting_portions_unlock_time`, `vesting_percent_per_portion`, `create_time`, `update_time`, `type`, `card_link`, `tweet_id`, `chain_id`, `payment_token_decimals`, `current_price`)
VALUES
    (2, 'pcontract_2', 'pcontract_2 desc', '/img/pc_2.jpg', 'david', 0, '100', '0x111222', '0x111333', '200', 0, '2024-04-25 20:21:47', 'http://404.com', 'http://404.com/about.html', '2024-04-24 20:22:31', '2024-04-27 20:22:37', '2024-04-27 20:22:53', '2024-04-30 20:23:00', '10', '2', '1', '30', '111', '222', 8, '2024-04-26 20:23:40', NULL, 1, NULL, NULL, 'DemoToken2', '1', NULL, NULL, '2024-04-25 12:25:07', '2024-04-25 12:25:07', 0, 'http://card_link2.com', 'tweet_id_2', 0, 8, 0);



delete from product_contract where id = 3;

INSERT INTO product_contract
(`id`,`name`,`description`,`img`,`twitter_name`,`status`,`amount`,
 `sale_contract_address`,
 `token_address`,`payment_token`,`follower`,`tge`,
 `project_website`,`about_html`,`registration_time_starts`,`registration_time_ends`,`sale_start`,`sale_end`,`max_participation`,
 `token_price_in_PT`,`total_tokens_sold`,`amount_of_tokens_to_sell`,`total_raised`,`symbol`,`decimals`,`unlock_time`,`medias`,
 `number_of_registrants`,`vesting`,`tricker`,`token_name`,`roi`,`vesting_portions_unlock_time`,`vesting_percent_per_portion`,
 `create_time`,`update_time`,`type`,`card_link`,`tweet_id`,`chain_id`,`payment_token_decimals`,`current_price`)
VALUES
    (3,'pcontract_3','pcontract_3 desc','/img/pc_3.jpg','david',0,'10000000000000000000000',
     '0x21eb499756E69d49D866d494e111881767897ad2',
     '0x0f590970a45d0b4c2dcfcaFF453400eE9B91B317','200',0,'2024-05-09 16:47:49',
     'http://404.com','http://404.com/about.html','2024-05-09 15:34:29','2024-05-09 15:51:08','2024-05-09 15:53:08','2024-05-09 16:13:08','10',
     '100000000000','1','30','111','MCK',18,'2024-12-17T00:17:42',null,
     1,null,null,'DemoToken1','1',null,null,
     '2024-04-25T12:25:07','2024-05-06T12:27:31',0,'http://card_link2.com','tweet_id_1',11155111,18,0);
