CREATE TABLE user_progress
(
    id     VARCHAR(100)          NOT NULL,
    progress_calories  INT NOT NULL DEFAULT 0,
    total_calories  INT NOT NULL DEFAULT 0,
    date_created    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;