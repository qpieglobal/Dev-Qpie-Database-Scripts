CREATE SCHEMA IF NOT EXISTS qpie_support DEFAULT CHARACTER SET utf8 ;
USE qpie_support ;

create table if not exists qpie_support.user_complaints
(user_id VARCHAR(50) NOT NULL ,
COMPLAINT_ID VARCHAR(20) NOT NULL PRIMARY KEY,
complaint_type VARCHAR(50) NOT NULL REFERENCES qpie_support.Complaint_TYPES(complaint_TYPE),
Comments VARCHAR(4000),
created_date DATE NOT NULL,
MODIFIED_DATE DATE NOT NULL,
STATUS VARCHAR(50) NOT NULL,
RESOLUTION_COMMENTS VARCHAR(4000)
);

CREATE TABLE IF NOT EXISTS qpie_support.Complaint_TYPES
(complaint_TYPE varchar(50) NOT NULL PRIMARY KEY,
COMPLAINT_DESC VARCHAR(4000) NOT NULL
);

CREATE TABLE IF NOT EXISTS qpie_support.COMPLAINT_HISTORY
(COMPLAINT_ID VARCHAR(20) NOT NULL REFERENCES qpie_support.user_complaints(COMPLAINT_ID),
SEQ_NUM INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
COMMENTS VARCHAR(4000) NOT NULL,
POSTED_BY VARCHAR(50) NOT NULL,
CREATED_DATE DATE NOT NULL,
MODIFIED_DATE DATE NOT NULL);


