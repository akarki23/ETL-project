CREATE TABLE suicides (
    ID SERIAL   NOT NULL,
    country_name VARCHAR(255)   NOT NULL,
    year INT   NOT NULL,
    sex VARCHAR(255)   NOT NULL,
    age VARCHAR(255)   NOT NULL,
    suicide_number INT   NOT NULL,
    population INT   NOT NULL,
    suicides_per_100k DECIMAL   NOT NULL,
    generation VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_suicides PRIMARY KEY (
        ID
     )
);

CREATE TABLE capitals (
    country_name VARCHAR(255)   NOT NULL,
    capital_name VARCHAR(255),
    capital_latitude DECIMAL   NOT NULL,
    capital_longitude DECIMAL   NOT NULL,
    continent_name VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_capitals PRIMARY KEY (
        country_name
     )
);

ALTER TABLE suicides ADD CONSTRAINT fk_suicides_country_name FOREIGN KEY(country_name)
REFERENCES capitals (country_name);

