CREATE TABLE wrk_customers

CREATE TABLE "SCOTT"."WRK_CUSTOMERS" (
    "ID"              NUMBER(8,0),
    "NAME"            VARCHAR2(50 BYTE),
    "USERNAME"        VARCHAR2(50 BYTE),
    "EMAIL"           VARCHAR2(50 BYTE),
    "DATEOFBIRTH"     DATE,
    "STREETADDRESS"   VARCHAR2(50 BYTE),
    "CITY"            VARCHAR2(50 BYTE),
    "COUNTRY"         VARCHAR2(50 BYTE),
    "ZIP"             VARCHAR2(10 BYTE),
    "STATE"           VARCHAR2(10 BYTE),
    "PHONE"           VARCHAR2(20 BYTE)
);

CREATE TABLE "SCOTT"."WRK_PRODUCTS" (
    "PRODUCTS"                 NUMBER(8,0),
    "PRODUCTNAME"              VARCHAR2(150 BYTE),
    "COMPANYNAME"              VARCHAR2(50 BYTE),
    "PRICE"                    FLOAT(126),
    "WAREHOUSELOCATIONSTATE"   VARCHAR2(10 BYTE)
);

CREATE TABLE "SCOTT"."WRK_PURCHASE" (
    "PAYMENTID"          NUMBER(8,0),
    "CUSTOMERID"         NUMBER(8,0),
    "PRODUCTID"          NUMBER(8,0),
    "TRANSACTIONDATE"    DATE,
    "CREDITCARD"         VARCHAR2(30 BYTE),
    "CREDITCARDNUMBER"   VARCHAR2(30 BYTE)
);

CREATE TABLE "SCOTT"."DIM_CUSTOMERS" (
    "CUSTOMER_ID_SURR"   NUMBER(8,0),
    "CUSTOMER_ID"        NUMBER(8,0),
    "NAME"               VARCHAR2(50 BYTE),
    "USERNAME"           VARCHAR2(50 BYTE),
    "EMAIL"              VARCHAR2(50 BYTE),
    "DATEOFBIRTH"        DATE,
    "STREETADDRESS"      VARCHAR2(50 BYTE),
    "CITY"               VARCHAR2(50 BYTE),
    "COUNTRY"            VARCHAR2(50 BYTE),
    "ZIP"                VARCHAR2(10 BYTE),
    "STATE"              VARCHAR2(10 BYTE),
    "PHONE"              VARCHAR2(20 BYTE)
);

CREATE TABLE "SCOTT"."DIM_PRODUCTS" (
    "PRODUCTS_ID_SURR"         NUMBER(8,0),
    "PRODUCTS_ID"              NUMBER(8,0),
    "PRODUCTNAME"              VARCHAR2(150 BYTE),
    "COMPANYNAME"              VARCHAR2(50 BYTE),
    "PRICE"                    FLOAT(126),
    "WAREHOUSELOCATIONSTATE"   VARCHAR2(10 BYTE)
);

CREATE TABLE "SCOTT"."FCT_PURCHASES" (
    "PAYMENT_ID"         NUMBER(8,0),
    "CUSTOMER_ID"        NUMBER(8,0),
    "PRODUCT_ID"         NUMBER(8,0),
    "TRANSACTIONDATE"    DATE,
    "CREDITCARD"         VARCHAR2(30 BYTE),
    "CREDITCARDNUMBER"   VARCHAR2(30 BYTE),
    "CUSTOMER_ID_SURR"   NUMBER(8,0),
    "PRODUCTS_ID_SURR"   NUMBER(8,0),
    "ISINTERSTATE"       NUMBER(2,0),
    "PAYMENT_ID_SURR"    NUMBER(8,0)
);

DROP SEQUENCE customer_seq;

CREATE SEQUENCE customer_seq INCREMENT BY 1 START WITH 1;

DROP SEQUENCE product_seq;

CREATE SEQUENCE product_seq INCREMENT BY 1 START WITH 1;

DROP SEQUENCE purchase_seq;

CREATE SEQUENCE purchase_seq INCREMENT BY 1 START WITH 1;