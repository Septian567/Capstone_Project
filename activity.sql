use fit_in;

CREATE TABLE activity
(
    id     VARCHAR(100)          NOT NULL,
    calories_needed   INT(100) NOT NULL DEFAULT 0,
    calories_fulfilled  INT(100)   NOT NULL DEFAULT 0
) ENGINE = InnoDB;

ALTER TABLE activity
	ADD date_created timestamp  NOT NULL DEFAULT current_timestamp;