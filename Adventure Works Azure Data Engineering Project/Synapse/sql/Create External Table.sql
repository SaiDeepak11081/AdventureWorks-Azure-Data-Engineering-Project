CREATE DATABASE SCOPED CREDENTIAL credential_name
WITH IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
with 
(
    LOCATION = 'https://adwstoragedatalake.blob.core.windows.net/silver',
    CREDENTIAL = credential_name
)


CREATE EXTERNAL DATA SOURCE source_gold
with 
(
    LOCATION = 'https://adwstoragedatalake.blob.core.windows.net/gold',
    CREDENTIAL = credential_name
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-------------------------------------
-- CREATE EXTERNAL TABLE EXTSALES
-------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.sales


-- select * from gold.extsales

-------------------------------------
-- CREATE EXTERNAL TABLE EXTCALENDAR
-------------------------------------

CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.calendar

-------------------------------------
-- CREATE EXTERNAL TABLE EXTCUSTOMERS
-------------------------------------

CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.customers


-------------------------------------
-- CREATE EXTERNAL TABLE EXTPRODUCTS
-------------------------------------

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.products


-------------------------------------
-- CREATE EXTERNAL TABLE EXTRETURNS
-------------------------------------

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.[returns]


-------------------------------------
-- CREATE EXTERNAL TABLE EXTSUBCATEGORIES
-------------------------------------

CREATE EXTERNAL TABLE gold.extsubcategories
WITH
(
    LOCATION = 'extsubcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.sub_categories

-------------------------------------
-- CREATE EXTERNAL TABLE EXTERRITORIES
-------------------------------------

CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.territories













