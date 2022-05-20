CREATE TABLE user_body
(
    id     VARCHAR(100)          NOT NULL,
    body_weight  INT NOT NULL DEFAULT 0,
    body_height  INT          NOT NULL DEFAULT 0,
    date_created timestamp  NOT NULL DEFAULT current_timestamp
) ENGINE = InnoDB;