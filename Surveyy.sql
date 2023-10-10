CREATE TABLE que_check_table (
	que_no	INT	NOT NULL,
	que_num	INT	NOT NULL,
	que_detail TEXT	NOT NULL,
	que_type	INT	NOT NULL,
	sur_no	INT	NOT NULL,
	que_nec	INT	NULL,
	user_no	INT	NOT NULL,
	PRIMARY KEY(que_no),
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);

CREATE TABLE `answer_check_table` (
	`ans_no`	INT	NOT NULL,
	`ans_detail` TEXT NOT NULL,
	`que_no`	INT	NOT NULL,
	`sur_no`	INT	NOT NULL,
	`user_no`	INT	NOT NULL,
	FOREIGN KEY(que_no) REFERENCES que_check_table(que_no),
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no),
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);

CREATE TABLE `que_one_table` (
	`que_no`	INT	NOT NULL,
	`que_num`	INT	NULL,
	`que_detail` TEXT NOT NULL,
	`que_type`	INT	NOT NULL,
	`que_nec`	INT NULL,
	`sur_no`	INT NOT NULL,
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no)
);

CREATE TABLE `answer_one_table` (
	`ans_no`	INT	NOT NULL,
	`ans_detail` VARCHER(100) NOT NULL,
	`que_no`	INT	NOT NULL,
	`sur_no`	INT	NOT NULL,
	`user_no`	INT	NOT NULL,
	FOREIGN KEY(que_no) REFERENCES que_check_table(que_no),
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no),
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);

CREATE TABLE `user_table` (
	`user_no`	INT NOT NULL,
	`user_email`	VARCHER(35) NULL,
	`user_pw`	VARCHER(20) NOT NULL,
	`user_gender`	VARCHER(5) NOT NULL,
	`user_dep`	VARCHER(20) NOT NULL,
	`user_grade`	INT NOT NULL,
	`user_num`	INT NOT NULL,
	`user_type`	VARCHER(10) NOT NULL,
	`user_date`	TIMESTAMP NOT NULL,
	`user_name`	VARCHER(100) NOT NULL,
	`user_nick`	VARCHER(100) NOT NULL
);

CREATE TABLE `survey_table` (
	`sur_no`	INT NOT NULL,
	`sur_title`	VARCHER(100) NOT NULL,
	`sur_detail` TEXT NOT NULL,
	`sur_public` INT NOT NULL,
	`sur_enroll` TIMESTAMP NOT NULL,
	`sur_finish` TIMESTAMP NOT NULL,
	`user_no` INT NOT NULL,
	`sur_last_modify` TIMESTAMP NOT NULL,
	`user_no`	INT NOT NULL,
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);

CREATE TABLE `que_short_table` (
	`que_no`	INT NOT NULL,
	`que_num`	INT NOT NULL,
	`que_detail` VARCHER(100) NOT NULL,
	`que_type`	INT NOT NULL,
	`sur_no`	INT NOT NULL,
	`que_nec`	INT NULL,
	`user_no`	INT NOT NULL,
	FOREIGN KEY(que_no) REFERENCES user_table(user_no)
);

CREATE TABLE `answer_short_table` (
	`ans_no`	INT	NOT NULL,
	`ans_detail` VARCHER(100) NOT NULL,
	`que_no`	INT	NOT NULL,
	`sur_no`	INT	NOT NULL,
	`user_no`	INT	NOT NULL,
	FOREIGN KEY(que_no) REFERENCES que_short_table(que_no),
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no),
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);


CREATE TABLE `que_long_table` (
	`que_no`	INT	NOT NULL,
	`que_num`	INT	NOT NULL,
	`que_detail` TEXT NOT NULL,
	`que_type`	INT	NOT NULL,
	`que_nec`	INT NULL,
	`sur_no`	INT NOT NULL,
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no)
);

CREATE TABLE `answer_long_table` (
	`ans_no`	INT	NOT NULL,
	`ans_detail` TEXT NOT NULL,
	`que_no`	INT	NOT NULL,
	`sur_no`	INT	NOT NULL,
	`user_no`	INT	NOT NULL,
	FOREIGN KEY(que_no) REFERENCES que_short_table(que_no),
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no),
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);

CREATE TABLE `subject_table` (
	`sub_no`	INT NOT NULL,
	`result_no`	INT NOT NULL,
	`user_no`	INT NOT NULL,
	`sur_no`	INT NOT NULL,
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no),
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);

CREATE TABLE `result_table` (
	`result_no`	INT NOT NULL,
	`user_no`	INT NOT NULL,
	`sur_no`	INT NOT NULL,
	`que_no`	INT NOT NULL,
	`ans_no`	INT NOT NULL,
	FOREIGN KEY(sur_no) REFERENCES survey_table(sur_no),
	FOREIGN KEY(user_no) REFERENCES user_table(user_no)
);