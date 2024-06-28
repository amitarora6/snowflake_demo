USE SCHEMA STG_DEMO ; 
CREATE TABLE IF NOT EXISTS T_FINANCIALS_PNL (
    COUNTRY_CODE varchar(150) NOT NULL PRIMARY KEY COMMENT 'Country code ',
    CALENDAR_MONTH integer NOT NULL COMMENT 'Month associated with sell in',
    SKU_CODE varchar(150) NOT NULL COMMENT 'RB SKU Code',
    RETAILER_ID varchar(150) NOT NULL COMMENT 'Retailer ID',
    CHANNEL_ID varchar(150) NOT NULL COMMENT 'ID of the Web, Store or Delivery- a place where the item was sold or the mechanism',
    BUSINESS_UNIT_ID varchar(150) NOT NULL COMMENT 'Business Unit description',
    CATEGORY_ID varchar(150) NOT NULL COMMENT 'Category description',
    NON_PROMO_TRADE_INVESTMENT decimal(22,4) COMMENT 'NON_PROMO_TRADE_INVESTMENT',
    YEAR integer NOT NULL COMMENT 'Custom Metric ID NAME as required for Channel-Category',
    SKU_DESCRIPTION varchar(150) COMMENT 'Custom Metric ID Value as required for Channel-Category',
    CURRENCY_ID varchar(150) COMMENT 'Custom Metric ID NAME as required for Channel-Category',
    TOTAL_UNITS decimal(22,4) COMMENT 'Custom Metric ID Value as required for Channel-Category',
    TOTAL_SALES decimal(22,4) COMMENT 'Custom Metric ID NAME as required for Channel-Category',
    TOTAL_CASES decimal(22,4) COMMENT 'Custom Metric ID Value as required for Channel-Category',
    GROSS_SALES_RESALES decimal(22,4) COMMENT 'Custom Metric ID NAME as required for Channel-Category',
    FREE_GOODS decimal(22,4) COMMENT 'Custom Metric ID Value as required for Channel-Category',
    GROSS_REVENUE decimal(22,4) COMMENT 'Custom Metric ID NAME as required for Channel-Category',
    RETURNS decimal(22,4) COMMENT 'Custom Metric ID Value as required for Channel-Category',
    DISTRIBUTOR_MARGIN_TRADESPEND varchar(150) COMMENT 'Combination used to pull data form Fusion',
    ADDITIONAL_COLUMN decimal(22,4) COMMENT 'Combination used to pull data form Fusion'
);