show databases;
use fit_in;

CREATE TABLE user
(
    id     VARCHAR(100)          NOT NULL,
    nama   VARCHAR(100) NOT NULL,
    email  VARCHAR(100) NOT NULL,
    password varchar(5) NOT NULL,
    confirm_password varchar(5) NOT NULL
) ENGINE = InnoDB;

ALTER TABLE user
    MODIFY password VARCHAR(256),
	MODIFY confirm_password VARCHAR(256);

ALTER TABLE user
	ADD column image VARCHAR(128);
    
ALTER TABLE user
	ADD date_created timestamp NOT NULL DEFAULT current_timestamp;

ALTER TABLE user
	DROP column confirm_password;

ALTER TABLE user
	ADD column is_active INT NOT NULL DEFAULT 1 AFTER password;