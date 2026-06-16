-----------------------
-- CREATE VIEW CALENDAR
-----------------------

create view gold.calendar
as 
select *
from OPENROWSET(
    BULK 'https://adwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) as QUER1;


-----------------------
-- CREATE VIEW CUSTOMERS
-----------------------

create view gold.customers
as 
select *
from OPENROWSET(
    BULK 'https://adwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) as QUER1


-----------------------
-- CREATE VIEW PRODUCTS
-----------------------

create view gold.products
as 
select *
from OPENROWSET(
    BULK 'https://adwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as QUER1


-----------------------
-- CREATE VIEW RETURNS
-----------------------

create view gold.[returns]
as 
select *
from OPENROWSET(
    BULK 'https://adwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) as QUER1


-----------------------
-- CREATE VIEW SALES
-----------------------

create view gold.sales
as 
select *
from OPENROWSET(
    BULK 'https://adwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) as QUER1


-----------------------
-- CREATE VIEW SUB CATEGORIES
-----------------------

create view gold.sub_categories
as 
select *
from OPENROWSET(
    BULK 'https://adwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_SubCategories/',
    FORMAT = 'PARQUET'
) as QUER1


-----------------------
-- CREATE VIEW TERRITORIES
-----------------------

create view gold.territories
as 
select *
from OPENROWSET(
    BULK 'https://adwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) as QUER1

































