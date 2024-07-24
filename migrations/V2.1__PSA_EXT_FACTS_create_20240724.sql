USE DATABASE {{ database }} ; 
USE SCHEMA PSA_EXT_FACTS ; 


CREATE TABLE IF NOT EXISTS PSA_ASIN_MAPPING (
    ALTERNATIVE_CARTON_BOTTLE_DIMENSIONS_WXDXH varchar(600) COMMENT 'Alternative carton bottle dimensions WXDXH',
    ASIN varchar(64) COMMENT 'Identification number',
    ASIN_COST float COMMENT 'ASIN cost',
    ASIN_STATUS varchar(600) COMMENT 'Status of the ASIN',
    ASP float COMMENT 'ASP',
    BRAND varchar(600) COMMENT 'Brand',
    CARTON_BOTTLE_DIMENSIONS_D varchar(600) COMMENT 'Carton bottle dimensions D',
    CARTON_BOTTLE_DIMENSIONS_H varchar(600) COMMENT 'Carton bottle dimensions H',
    CARTON_BOTTLE_DIMENSIONS_W varchar(600) COMMENT 'Carton bottle dimensions W',
    CARTON_BOTTLE_DIMENSIONS_WXDXH varchar(600) COMMENT 'Carton bottle dimensions WXDXH',
    CARTON_BOTTLE_WEIGHT_OZ varchar(600) COMMENT 'Carton bottle weight OZ',
    CASE_COST float COMMENT 'Case cost',
    CASE_DIMENSIONS_CUBIC_FT float COMMENT 'Case dimesions cubic ft',
    CASE_DIMENSIONS_H varchar(600) COMMENT 'Case dimesions H',
    CASE_DIMENSIONS_L varchar(600) COMMENT 'Case dimesions L',
    CASE_DIMENSIONS_LBS float COMMENT 'Case dimesions LBS',
    CASE_DIMENSIONS_LXWXH varchar(600) COMMENT 'Case dimesions LXWXH',
    CASE_DIMENSIONS_TOTAL_WEIGHT float COMMENT 'Case dimesions total weight',
    CASE_DIMENSIONS_W varchar(600) COMMENT 'Case dimesions W',
    CASE_DIMENSIONS_WEIGHT_OZ float COMMENT 'Case dimesions Weight OZ',
    DESCRIPTION_TITLE varchar(600000) COMMENT 'Description title',
    FULL_UPC number(38,0) COMMENT 'Full UPC',
    GMID number(38,0) COMMENT 'GMID',
    GTIN number(38,0) COMMENT 'GTIN',
    HSA_FSA_ELIGIBLE varchar(600) COMMENT 'HSA FSA eligible',
    INNER_PACK_DIMENSIONS_CU_FT varchar(600) COMMENT 'Inner pack dimesions cubic ft',
    INNER_PACK_DIMENSIONS_H varchar(600) COMMENT 'Inner pack dimesions H',
    INNER_PACK_DIMENSIONS_L varchar(600) COMMENT 'Inner pack dimesions L',
    INNER_PACK_DIMENSIONS_LXWXH varchar(600) COMMENT 'Inner pack dimesions LXWXH',
    INNER_PACK_DIMENSIONS_W varchar(600) COMMENT 'Inner pack dimesions W',
    INNER_PACK_DIMENSIONS_WEIGHT_LBS varchar(600) COMMENT 'Inner pack dimesions Weight LBS',
    INNER_PACK_DIMENSIONS_WEIGHT_OZ varchar(600) COMMENT 'Inner pack dimesions Weight OZ',
    IPIP number(38,0) COMMENT 'IPIP',
    IPMP number(38,0) COMMENT 'IPMP',
    ITEM_NUMBER number(38,0) COMMENT 'Item number',
    LMID number(38,0) COMMENT 'LMID',
    LOADING_TIME timestamp_tz(9) COMMENT 'Loading time',
    PALLET_CASE_COST float COMMENT 'Pallet case cost',
    PALLET_DIMENSIONS_CASES_PER_TIER varchar(600) COMMENT 'Pallet dimensions cases per tier',
    PALLET_DIMENSIONS_TIERS_PER_PALLET varchar(600) COMMENT 'Pallet dimensions cases per pallet',
    PALLET_DIMENSIONS_TOTAL_CASES varchar(600) COMMENT 'Pallet dimensions total cases',
    PALLET_DIMENSIONS_TOTAL_WEIGHT varchar(600) COMMENT 'Pallet dimensions total weight',
    PALLET_UNIT_COST float COMMENT 'Pallet unit cost',
    RETAIL_MARGIN varchar(600) COMMENT 'Retail margin',
    SANOFI_PRICE_LIST_STATUS varchar(600) COMMENT 'Sanofi price list status',
    UNIT_COST float COMMENT 'Unit cost',
    VERSIONS number(38,0) COMMENT 'Version'
);
CREATE TABLE IF NOT EXISTS PSA_COVID (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    COVID_CONFIRMED_CASES float COMMENT 'Covid confirmed cases',
    COVID_DEATH_CASES float COMMENT 'Covid death cases',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    START_DATE date COMMENT 'Start date'
);
CREATE TABLE IF NOT EXISTS PSA_CPI (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    CPI float COMMENT 'Cpi',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    START_DATE date COMMENT 'Start date'
);
CREATE TABLE IF NOT EXISTS PSA_GAS_PRICE (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    GAS_PRICE float COMMENT 'Gas price',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    START_DATE date COMMENT 'Start date'
);
CREATE TABLE IF NOT EXISTS PSA_GDP (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    GDP_IN_BILLION_DOLLAR float COMMENT 'GDP in billion dollar',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    START_DATE date COMMENT 'Start date'
);
CREATE TABLE IF NOT EXISTS PSA_HOLIDAY (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    HOLIDAYS number(38,0) COMMENT 'Holidays',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    NUM_SUBDIVISIONS_HOLIDAY number(38,0) COMMENT 'Number of subdivision holiday',
    START_DATE date COMMENT 'Start date'
);
CREATE TABLE IF NOT EXISTS PSA_POPULATION (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    POPULATION_IN_THOUSANDS float COMMENT 'Population in thousands',
    START_DATE date COMMENT 'Start date'
);
CREATE TABLE IF NOT EXISTS PSA_UNEMPLOYMENT_RATE (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    START_DATE date COMMENT 'Start date',
    UNEMPLOYMENT_RATE float COMMENT 'Unemployment rate'
);
CREATE TABLE IF NOT EXISTS PSA_WEATHER (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    HUMIDITY float COMMENT 'Humidity',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    PRECIP float COMMENT 'Precipitation',
    START_DATE date COMMENT 'Start date',
    TEMP float COMMENT 'Temperature',
    WINDSPEED float COMMENT 'Windspeed'
);
CREATE TABLE IF NOT EXISTS PSA_WEATHER_FORECAST (
    COUNTRY_CODE varchar(64) COMMENT 'Country code',
    HUMIDITY float COMMENT 'Humidity',
    LAST_UPDATED_DATE date COMMENT 'Last updated date',
    LAST_UPDATED_TIMESTAMP timestamp_ltz(9) COMMENT 'Last updated timestamp',
    PRECIP float COMMENT 'Precipitation',
    START_DATE date COMMENT 'Start date',
    TEMP float COMMENT 'Temperature',
    WINDSPEED float COMMENT 'Windspeed'
);