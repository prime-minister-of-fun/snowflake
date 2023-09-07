CREATE TABLE PUBLIC.out_of_charge_fixed (
pk bigint primary KEY autoincrement start 1 increment 1,
the_timestamp TIMESTAMP_NTZ,
vehicle_year SMALLINT,
vehicle_make VARCHAR(30),
vehicle_model VARCHAR(30),
geo_vehicle_point GEOGRAPHY,
nearest_city VARCHAR(30),
location_state VARCHAR(30),
service_description VARCHAR(200),
service_category VARCHAR(30),
geo_towed_point GEOGRAPHY,
service_truck VARCHAR(30)
);

CREATE TABLE PUBLIC.counties (
	gid bigint primary KEY,
	statefp varchar(2) NULL,
	countyfp varchar(3) NULL,
	countyns varchar(8) NULL,
	affgeoid varchar(14) NULL,
	geoid varchar(5) NULL,
	"name" varchar(100) NULL,
	lsad varchar(2) NULL,
	aland float8 NULL,
	awater float8 NULL,
	geom geography NULL
);

CREATE TABLE PUBLIC.public_statistics (
	county_fips integer PRIMARY KEY,
	county_info VARIANT NULL,
	race VARIANT NULL,
	age VARIANT NULL,
	male bigint NULL,
	female bigint NULL,
	population VARIANT NULL,
	deaths VARIANT NULL,
	bls VARIANT NULL,
	life_expectancy float4 NULL,
	fatal_police_shootings VARIANT NULL,
	police_deaths integer NULL,
	avg_income float8 NULL,
	covid_deaths VARIANT NULL,
	covid_confirmed VARIANT NULL,
	covid_vaccination VARIANT NULL,
	elections VARIANT NULL,
	education VARIANT NULL,
	poverty_rate float4 NULL,
	cost_of_living VARIANT NULL,
	industry VARIANT NULL,
	health VARIANT NULL,
	date_imported timestamp NULL
);
