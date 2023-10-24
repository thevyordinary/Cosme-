select CUSTOMERNAME,
       PHONE_NUMBER,
       EMAIL,
       ADDRESS
from "CUSTOMER" a

select PRODUCT_CODE,
       DISCOUNT,
       QUANTITY,
       PRODUCT_NAME,
       PRICE
from "PRODUCT" a

select (select "DISCOUNT" from "PRODUCT" x where x."PRODUCT_CODE" = a."PRODUCT_CODE") "PRODUCT_CODE",
       (select "SUPPLIER_NAME" from "SUPPLIER" x where x."SUPPLIERID" = a."SUPPLIERID") "SUPPLIERID"
from "PROVIDE" a

select (select "ADDRESS" from "CUSTOMER" x where x."EMAIL" = a."EMAIL") "EMAIL",
       (select "DISCOUNT" from "PRODUCT" x where x."PRODUCT_CODE" = a."PRODUCT_CODE") "PRODUCT_CODE",
       PURCHASE_CODE,
       AMOUNT,
       TIME_OF_PURCHASE
from "PURCHASE" a

select SUPPLIER_PHONE_NUMBER,
       SUPPLIER_NAME,
       SUPPLIER_EMAIL,
       SUPPLIER_ADDRESS,
       SUPPLIERID
from "SUPPLIER" a

select (select "ADDRESS" from "CUSTOMER" x where x."EMAIL" = a."EMAIL") "EMAIL",
       USERID,
       USERNAME,
       PASS_WORD
from "USERACCOUNT" a
 
select STATEMENT_ID,
       PLAN_ID,
       TIMESTAMP,
       REMARKS,
       OPERATION,
       OPTIONS,
       OBJECT_NODE,
       OBJECT_OWNER,
       OBJECT_NAME,
       OBJECT_ALIAS,
       OBJECT_INSTANCE,
       OBJECT_TYPE,
       OPTIMIZER,
       SEARCH_COLUMNS,
       ID,
       PARENT_ID,
       DEPTH,
       POSITION,
       COST,
       CARDINALITY,
       BYTES,
       OTHER_TAG,
       PARTITION_START,
       PARTITION_STOP,
       PARTITION_ID,
       DISTRIBUTION,
       CPU_COST,
       IO_COST,
       TEMP_SPACE,
       ACCESS_PREDICATES,
       FILTER_PREDICATES,
       PROJECTION,
       TIME,
       QBLOCK_NAME
from "HTMLDB_PLAN_TABLE" a

