CREATE TABLE CONTRIBS (
  C_ID int NOT NULL,
  C_name varchar(128) NOT NULL,
  C_author varchar(128) NOT NULL,
  C_email varchar(80),
  C_ftpfile varchar(80),
  C_version varchar(30),
  C_os varchar(30),
  C_homepage varchar(80),
  C_descr BLOB,
  C_pwd varchar(30),
  C_category varchar(15),
  C_date varchar(10),
  C_user varchar(80),
  C_auth_method int default 0 NOT NULL,
  PRIMARY KEY  (C_ID)
);

CREATE GENERATOR GEN_CONTRIBS;
