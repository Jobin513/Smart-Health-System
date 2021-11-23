/*
Author: Joker Zhong
Date: 11/21/2021
File name: Table of symptoms
*/

SET FOREIGN_KEY_CHECKS = 0;

//Table structure for Symptoms

DROP TABLE IF EXISTS SYMPTOMS;
CREATE TABLE SYMPTOMS (
  SymptomId int not null auto_increment,
  Title varchar(50) default null COMMENT 'The name of the symptom'
  Result_item_content varchar(500) default null COMMENT 'Disease definition',
  Result_item_content_label varchar(255) default null COMMENT 'Main features',
  Result_item_content_label1 varchar(255) DEFAULT NULL,
  Result_item_content_label2 varchar(255) DEFAULT NULL,
  Result_item_content_label3 varchar(255) DEFAULT NULL,
  Result_item_content_label4 varchar(255) DEFAULT NULL,
  View int(255) default '0' COMMENT 'number of visits',
);