CREATE TABLE b_pbrf_blanks (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  ACTIVE TINYINT(1) NOT NULL,
  SLUG VARCHAR(100) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE b_pbrf_options (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  PARAM_KEY VARCHAR(20) NOT NULL,
  PARAM_VALUE VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE b_pbrf_pdf (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  BLANK_ID INT(11) NOT NULL,
  ORDER_ID INT(11) NOT NULL,
  CONTENT TEXT NOT NULL,
  URL VARCHAR(100) NOT NULL,
  PRIMARY KEY (ID)
); 

CREATE TABLE b_pbrf_templates (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  BLANK_ID INT(11) NOT NULL,
  CONTENT TEXT NOT NULL,
  PRIMARY KEY (ID)
); 

INSERT INTO b_pbrf_options (PARAM_KEY, PARAM_VALUE) VALUES ('login', '');
INSERT INTO b_pbrf_options (PARAM_KEY, PARAM_VALUE) VALUES ('token', '');

INSERT INTO b_pbrf_blanks (NAME, ACTIVE, SLUG) VALUES ('����� ������� �.116', 1, "f116");
INSERT INTO b_pbrf_blanks (NAME, ACTIVE, SLUG) VALUES ('����� ��������� �������� �.112��', 1, "f112");
INSERT INTO b_pbrf_blanks (NAME, ACTIVE, SLUG) VALUES ('����� ����������� ������� �. 113\\��', 1, "f113");
INSERT INTO b_pbrf_blanks (NAME, ACTIVE, SLUG) VALUES ('����� �113/�117 ������� � ���������� ��������', 1, "f113f117");
