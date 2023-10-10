CREATE TABLE `que_check_table` (
	`que_no`	NOT NULL	NOT NULL,
	`que_num`	NOT NULL	NULL,
	`que_detail`	NOT NULL	NULL,
	`que_type`	NOT NULL	NULL,
	`sur_no`	NOT NULL	NULL,
	`que_nec`	NULL	NULL,
	`user_no`	NOT NULL	NOT NULL
);

CREATE TABLE `answer_check_table` (
	`ans_no`	NOT NULL	NOT NULL,
	`ans_detail`	NOT NULL	NULL,
	`que_no`	NOT NULL	NOT NULL,
	`sur_no`	NOT NULL	NOT NULL,
	`user_no`	NOT NULL	NOT NULL
);

CREATE TABLE `que_one_table` (
	`que_no`	NOT NULL	NOT NULL,
	`que_num`	NOT NULL	NULL,
	`que_detail`	NOT NULL	NULL,
	`que_type`	NOT NULL	NULL,
	`que_nec`	NULL	NULL,
	`sur_no`	NOT NULL	NOT NULL
);

CREATE TABLE `que_long_table` (
	`que_no`	NOT NULL	NOT NULL,
	`que_num`	NOT NULL	NULL,
	`que_detail`	NOT NULL	NULL,
	`que_type`	NOT NULL	NULL,
	`que_nec`	NULL	NULL,
	`sur_no`	NOT NULL	NOT NULL
);

CREATE TABLE `answer_one_table` (
	`ans_no`	NOT NULL	NOT NULL,
	`ans_detail`	NULL	NULL,
	`que_no`	NOT NULL	NOT NULL,
	`sur_no2`	NOT NULL	NOT NULL,
	`user_no2`	NOT NULL	NOT NULL
);

CREATE TABLE `user_table` (
	`user_no`	NOT NULL	NOT NULL,
	`user_email`	NOT NULL	NULL,
	`user_pw`	NOT NULL	NULL,
	`user_gender`	NOT NULL	NULL,
	`user_dep`	NOT NULL	NULL,
	`user_grade`	NOT NULL	NULL,
	`user_num`	NOT NULL	NULL,
	`user_type`	NOT NULL	NULL,
	`user_date`	NOT  NULL	NULL,
	`user_name`	NOT NULL	NULL,
	`user_nick`	NOT NULL	NULL
);

CREATE TABLE `survey_table` (
	`sur_no`	NOT NULL	NOT NULL,
	`sur_title`	NOTNULL	NULL,
	`sur_detail`	NOT NULL	NOT NULL,
	`sur_public`	NOT NULL	NULL,
	`sur_enroll`	NOTNULL	NULL,
	`sur_finish`	NOTNULL	NULL,
	`user_no`	NOTNULL	NULL,
	`sur_last_modify`	NOT NULL	NULL,
	`user_no2`	NOT NULL	NOT NULL
);

CREATE TABLE `que_short_table` (
	`que_no`	NOT NULL	NOT NULL,
	`que_num`	NOT NULL	NULL,
	`que_detail`	NOT NULL	NULL,
	`que_type`	NOT NULL	NULL,
	`sur_no`	NOT NULL	NULL,
	`que_nec`	NULL	NULL,
	`user_no`	NOT NULL	NOT NULL
);

CREATE TABLE `answer_short_table` (
	`ans_no`	NOT NULL	NOT NULL,
	`ans_detail`	NOT NULL	NULL,
	`que_no`	NOT NULL	NOT NULL,
	`sur_no`	NOT NULL	NOT NULL,
	`user_no`	NOT NULL	NOT NULL
);

CREATE TABLE `answer_long_table` (
	`ans_no`	NOT NULL	NOT NULL,
	`ans_detail`	VARCHAR(255)	NULL,
	`que_no`	NOT NULL	NOT NULL,
	`sur_no`	NOT NULL	NOT NULL,
	`user_no2`	NOT NULL	NOT NULL
);

CREATE TABLE `subject_table` (
	`sub_no`	NOT NULL	NOT NULL,
	`result_no`	NOT NULL	NULL,
	`user_no`	NOT NULL	NOT NULL,
	`sur_no`	NOT NULL	NOT NULL
);

CREATE TABLE `result_table` (
	`result_no`	NOT NULL	NOT NULL,
	`user_no`	NOT NULL	NOT NULL,
	`sur_no`	NOT NULL	NOT NULL,
	`que_no`	NOTNULL	NULL,
	`ans_no`	NOTNULL	NULL
);

ALTER TABLE `que_check_table` ADD CONSTRAINT `PK_QUE_CHECK_TABLE` PRIMARY KEY (
	`que_no`
);

ALTER TABLE `answer_check_table` ADD CONSTRAINT `PK_ANSWER_CHECK_TABLE` PRIMARY KEY (
	`ans_no`
);

ALTER TABLE `que_one_table` ADD CONSTRAINT `PK_QUE_ONE_TABLE` PRIMARY KEY (
	`que_no`
);

ALTER TABLE `que_long_table` ADD CONSTRAINT `PK_QUE_LONG_TABLE` PRIMARY KEY (
	`que_no`
);

ALTER TABLE `answer_one_table` ADD CONSTRAINT `PK_ANSWER_ONE_TABLE` PRIMARY KEY (
	`ans_no`
);

ALTER TABLE `user_table` ADD CONSTRAINT `PK_USER_TABLE` PRIMARY KEY (
	`user_no`
);

ALTER TABLE `survey_table` ADD CONSTRAINT `PK_SURVEY_TABLE` PRIMARY KEY (
	`sur_no`
);

ALTER TABLE `que_short_table` ADD CONSTRAINT `PK_QUE_SHORT_TABLE` PRIMARY KEY (
	`que_no`
);

ALTER TABLE `answer_short_table` ADD CONSTRAINT `PK_ANSWER_SHORT_TABLE` PRIMARY KEY (
	`ans_no`
);

ALTER TABLE `answer_long_table` ADD CONSTRAINT `PK_ANSWER_LONG_TABLE` PRIMARY KEY (
	`ans_no`
);

ALTER TABLE `subject_table` ADD CONSTRAINT `PK_SUBJECT_TABLE` PRIMARY KEY (
	`sub_no`
);

ALTER TABLE `result_table` ADD CONSTRAINT `PK_RESULT_TABLE` PRIMARY KEY (
	`result_no`
);

