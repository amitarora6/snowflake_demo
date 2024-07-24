USE DATABASE {{ database }} ; 
USE SCHEMA STG_EXT_FACTS ; 


CREATE OR REPLACE VIEW STG_ASIN_MAPPING_JP AS SELECT    a.$1::text as ALTERNATIVE_CARTON_BOTTLE_DIMENSIONS_WXDXH,
    a.$2::text as ASIN,
    a.$3::float as ASIN_COST,
    a.$4::text as ASIN_STATJP,
    a.$5::float as ASP,
    a.$6::text as BRAND,
    a.$7::text as CARTON_BOTTLE_DIMENSIONS_D,
    a.$8::text as CARTON_BOTTLE_DIMENSIONS_H,
    a.$9::text as CARTON_BOTTLE_DIMENSIONS_W,
    a.$10::text as CARTON_BOTTLE_DIMENSIONS_WXDXH,
    a.$11::text as CARTON_BOTTLE_WEIGHT_OZ,
    a.$12::float as CASE_COST,
    a.$13::float as CASE_DIMENSIONS_CUBIC_FT,
    a.$14::text as CASE_DIMENSIONS_H,
    a.$15::text as CASE_DIMENSIONS_L,
    a.$16::float as CASE_DIMENSIONS_LBS,
    a.$17::text as CASE_DIMENSIONS_LXWXH,
    a.$18::float as CASE_DIMENSIONS_TOTAL_WEIGHT,
    a.$19::text as CASE_DIMENSIONS_W,
    a.$20::float as CASE_DIMENSIONS_WEIGHT_OZ,
    a.$21::text as DESCRIPTION_TITLE,
    a.$22::number(38,0) as FULL_UPC,
    a.$23::number(38,0) as GMID,
    a.$24::number(38,0) as GTIN,
    a.$25::text as HSA_FSA_ELIGIBLE,
    a.$26::text as INNER_PACK_DIMENSIONS_CU_FT,
    a.$27::text as INNER_PACK_DIMENSIONS_H,
    a.$28::text as INNER_PACK_DIMENSIONS_L,
    a.$29::text as INNER_PACK_DIMENSIONS_LXWXH,
    a.$30::text as INNER_PACK_DIMENSIONS_W,
    a.$31::text as INNER_PACK_DIMENSIONS_WEIGHT_LBS,
    a.$32::text as INNER_PACK_DIMENSIONS_WEIGHT_OZ,
    a.$33::number(38,0) as IPIP,
    a.$34::number(38,0) as IPMP,
    a.$35::number(38,0) as ITEM_NUMBER,
    a.$36::number(38,0) as LMID,
    a.$37::timestamp_tz(9) as LOADING_TIME,
    a.$38::float as PALLET_CASE_COST,
    a.$39::text as PALLET_DIMENSIONS_CASES_PER_TIER,
    a.$40::text as PALLET_DIMENSIONS_TIERS_PER_PALLET,
    a.$41::text as PALLET_DIMENSIONS_TOTAL_CASES,
    a.$42::text as PALLET_DIMENSIONS_TOTAL_WEIGHT,
    a.$43::float as PALLET_UNIT_COST,
    a.$44::text as RETAIL_MARGIN,
    a.$45::text as SANOFI_PRICE_LIST_STATUS,
    a.$46::float as UNIT_COST
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv') a;
CREATE OR REPLACE VIEW STG_ASIN_MAPPING_US AS SELECT    a.$1::text as ALTERNATIVE_CARTON_BOTTLE_DIMENSIONS_WXDXH,
    a.$2::text as ASIN,
    a.$3::float as ASIN_COST,
    a.$4::varchar(600) as ASIN_STATUS,
    a.$5::float as ASP,
    a.$6::varchar(600) as BRAND,
    a.$7::text as CARTON_BOTTLE_DIMENSIONS_D,
    a.$8::text as CARTON_BOTTLE_DIMENSIONS_H,
    a.$9::text as CARTON_BOTTLE_DIMENSIONS_W,
    a.$10::text as CARTON_BOTTLE_DIMENSIONS_WXDXH,
    a.$11::text as CARTON_BOTTLE_WEIGHT_OZ,
    a.$12::float as CASE_COST,
    a.$13::float as CASE_DIMENSIONS_CUBIC_FT,
    a.$14::text as CASE_DIMENSIONS_H,
    a.$15::text as CASE_DIMENSIONS_L,
    a.$16::float as CASE_DIMENSIONS_LBS,
    a.$17::text as CASE_DIMENSIONS_LXWXH,
    a.$18::float as CASE_DIMENSIONS_TOTAL_WEIGHT,
    a.$19::text as CASE_DIMENSIONS_W,
    a.$20::float as CASE_DIMENSIONS_WEIGHT_OZ,
    a.$21::varchar(6000) as DESCRIPTION_TITLE,
    a.$22::number(38,0) as FULL_UPC,
    a.$23::number(38,0) as GMID,
    a.$24::number(38,0) as GTIN,
    a.$25::text as HSA_FSA_ELIGIBLE,
    a.$26::text as INNER_PACK_DIMENSIONS_CU_FT,
    a.$27::text as INNER_PACK_DIMENSIONS_H,
    a.$28::text as INNER_PACK_DIMENSIONS_L,
    a.$29::text as INNER_PACK_DIMENSIONS_LXWXH,
    a.$30::text as INNER_PACK_DIMENSIONS_W,
    a.$31::text as INNER_PACK_DIMENSIONS_WEIGHT_LBS,
    a.$32::text as INNER_PACK_DIMENSIONS_WEIGHT_OZ,
    a.$33::number(38,0) as IPIP,
    a.$34::number(38,0) as IPMP,
    a.$35::number(38,0) as ITEM_NUMBER,
    a.$36::number(38,0) as LMID,
    a.$37::timestamp_tz(9) as LOADING_TIME,
    a.$38::float as PALLET_CASE_COST,
    a.$39::text as PALLET_DIMENSIONS_CASES_PER_TIER,
    a.$40::text as PALLET_DIMENSIONS_TIERS_PER_PALLET,
    a.$41::text as PALLET_DIMENSIONS_TOTAL_CASES,
    a.$42::text as PALLET_DIMENSIONS_TOTAL_WEIGHT,
    a.$43::float as PALLET_UNIT_COST,
    a.$44::text as RETAIL_MARGIN,
    a.$45::varchar(600) as SANOFI_PRICE_LIST_STATUS,
    a.$46::float as UNIT_COST
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv') a;
CREATE OR REPLACE VIEW STG_COVID_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as COVID_CONFIRMED_CASES,
    a.$3::float as COVID_DEATH_CASES,
    a.$4::timestamp_ntz(9) as LAST_UPDATED_TIMESTAMP,
    a.$5::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/covid/JP/covid/covid.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_COVID_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as COVID_CONFIRMED_CASES,
    a.$3::float as COVID_DEATH_CASES,
    a.$4::timestamp_ntz(9) as LAST_UPDATED_TIMESTAMP,
    a.$5::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/covid/US/covid/covid.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_CPI_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as CPI,
    a.$3::timestamp_ntz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/fred/JP/cpi/cpi.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_CPI_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as CPI,
    a.$3::timestamp_ntz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/fred/US/cpi/cpi.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_GAS_PRICE_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as GAS_PRICE,
    a.$3::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/fred/US/gas_price/gas_price.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_GDP_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as GDP_IN_BILLION_DOLLAR,
    a.$3::timestamp_ntz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/fred/JP/gdp/gdp.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_GDP_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as GDP_IN_BILLION_DOLLAR,
    a.$3::timestamp_ntz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/fred/US/gdp/gdp.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_HOLIDAYS_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::number(38,0) as HOLIDAYS,
    a.$3::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::number(38,0) as NUM_SUBDIVISIONS_HOLIDAY,
    a.$5::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/holiday/JP/holiday/holiday.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_HOLIDAYS_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::number(38,0) as HOLIDAYS,
    a.$3::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::number(38,0) as NUM_SUBDIVISIONS_HOLIDAY,
    a.$5::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/holiday/US/holiday/holiday.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_POPULATION_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$3::float as POPULATION_IN_THOUSANDS,
    a.$4::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/fred/JP/population/population_.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_POPULATION_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$3::float as POPULATION_IN_THOUSANDS,
    a.$4::date as START_DATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/fred/US/population/population_.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_UNEMPLOYMENT_RATE_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$3::date as START_DATE,
    a.$4::float as UNEMPLOYMENT_RATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/fred/JP/unemployment_rate/unemployment_rate_.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_UNEMPLOYMENT_RATE_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$3::date as START_DATE,
    a.$4::float as UNEMPLOYMENT_RATE
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/fred/US/unemployment_rate/unemployment_rate_.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_WEATHER_FORECAST_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as HUMIDITY,
    a.$3::date as LAST_UPDATED_DATE,
    a.$4::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$5::float as PRECIP,
    a.$6::date as START_DATE,
    a.$7::float as TEMP,
    a.$8::float as WINDSPEED
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/weather/JP/weather_forecast/weather_forecast.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_WEATHER_FORECAST_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as HUMIDITY,
    a.$3::date as LAST_UPDATED_DATE,
    a.$4::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$5::float as PRECIP,
    a.$6::date as START_DATE,
    a.$7::float as TEMP,
    a.$8::float as WINDSPEED
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/weather/US/weather_forecast/weather_forecast.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_WEATHER_JP AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as HUMIDITY,
    a.$3::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::float as PRECIP,
    a.$5::date as START_DATE,
    a.$6::float as TEMP,
    a.$7::float as WINDSPEED
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.api_avc_csv', 
 pattern=>'de/weather/JP/weather/weather.*[.]csv$') a;
CREATE OR REPLACE VIEW STG_WEATHER_US AS SELECT    a.$1::text as COUNTRY_CODE,
    a.$2::float as HUMIDITY,
    a.$3::timestamp_ltz(9) as LAST_UPDATED_TIMESTAMP,
    a.$4::float as PRECIP,
    a.$5::date as START_DATE,
    a.$6::float as TEMP,
    a.$7::float as WINDSPEED
   from @DF_CHC_MARKET_DEV_EXT_FACTS_STG 
 (file_format=>'tech.tech.api_avc_csv', 
 pattern=>'de/weather/US/weather/weather.*[.]csv$') a;