create or replace TRANSIENT TABLE BIZINT_DEV.DBT_KEVANS.DIM_ACCOUNT_CURRENT (
	ACCOUNT_PK VARCHAR(32),
	ACCOUNT_NK VARCHAR(16777216),
	ACCOUNT_NAME VARCHAR(16777216),
	COMPNAY_ID VARCHAR(16777216),
	BILLING_ADDRESS_STREET_TXT VARCHAR(16777216),
	BILLING_ADDRESS_CITY_TXT VARCHAR(16777216),
	BILLING_STATE_CODE VARCHAR(16777216),
	BILLING_ZIP_CODE VARCHAR(16777216),
	CUSTOMER_TYPE_TXT VARCHAR(16777216),
	COMPANY_TYPE_CODE VARCHAR(16777216)
);

create or replace TRANSIENT TABLE BIZINT_DEV.DBT_KEVANS.DIM_DATE (
	DATE_PK NUMBER(38,0),
	DATE_DAY DATE,
	PRIOR_DATE_DAY DATE,
	NEXT_DATE_DAY DATE,
	PRIOR_YEAR_DATE_DAY DATE,
	PRIOR_YEAR_OVER_YEAR_DATE_DAY DATE,
	DAY_OF_WEEK NUMBER(3,0),
	DAY_OF_WEEK_ISO NUMBER(2,0),
	DAY_OF_WEEK_NAME VARCHAR(16777216),
	DAY_OF_WEEK_NAME_SHORT VARCHAR(3),
	DAY_OF_MONTH NUMBER(2,0),
	DAY_OF_YEAR NUMBER(4,0),
	WEEK_START_DATE DATE,
	WEEK_END_DATE DATE,
	PRIOR_YEAR_WEEK_START_DATE DATE,
	PRIOR_YEAR_WEEK_END_DATE DATE,
	WEEK_OF_YEAR NUMBER(38,0),
	ISO_WEEK_START_DATE DATE,
	ISO_WEEK_END_DATE DATE,
	PRIOR_YEAR_ISO_WEEK_START_DATE DATE,
	PRIOR_YEAR_ISO_WEEK_END_DATE DATE,
	ISO_WEEK_OF_YEAR NUMBER(38,0),
	PRIOR_YEAR_WEEK_OF_YEAR NUMBER(38,0),
	PRIOR_YEAR_ISO_WEEK_OF_YEAR NUMBER(38,0),
	MONTH_OF_YEAR NUMBER(38,0),
	MONTH_NAME VARCHAR(16777216),
	MONTH_NAME_SHORT VARCHAR(16777216),
	MONTH_START_DATE DATE,
	MONTH_END_DATE DATE,
	PRIOR_YEAR_MONTH_START_DATE DATE,
	PRIOR_YEAR_MONTH_END_DATE DATE,
	QUARTER_OF_YEAR NUMBER(38,0),
	QUARTER_START_DATE DATE,
	QUARTER_END_DATE DATE,
	YEAR_NUMBER NUMBER(38,0),
	YEAR_START_DATE DATE,
	YEAR_END_DATE DATE
);

create or replace TRANSIENT TABLE BIZINT_DEV.DBT_KEVANS.DIM_EMPLOYEE (
	USER_PK VARCHAR(32),
	EMAIL VARCHAR(16777216),
	FIRST_NAME VARCHAR(16777216),
	LAST_NAME VARCHAR(16777216),
	FULL_NAME VARCHAR(16777216),
	TITLE_NAME VARCHAR(16777216),
	START_DATE VARCHAR(16777216),
	END_DATE VARCHAR(16777216),
	CURRENT_MANAGER_NAME VARCHAR(16777216),
	TEAM_NAME VARCHAR(16777216),
	WEEKLY_CAP_NUMBER NUMBER(38,0),
	PRIMARY_SOURCE_SYSTEM_NAME VARCHAR(10),
	ADP_ACTIVE_IND VARCHAR(10),
	SALESFORCE_ACTIVE_IND VARCHAR(10),
	HARVEST_ACTIVE_IND VARCHAR(10),
	FRESH_DESK_IND VARCHAR(10)
);

create or replace TRANSIENT TABLE BIZINT_DEV.DBT_KEVANS.FACT_ACCOUNT (
	ACCOUNT_FACT_PK VARCHAR(32),
	ACCOUNT_PK VARCHAR(32),
	ACCOUNT_OWNER_PK VARCHAR(32),
	ACCOUNT_MANAGER_PK VARCHAR(32),
	LAST_ACTIVITY_DATE_PK NUMBER(38,0),
	ARR_AMOUNT FLOAT,
	ACCOUNT_COUNT NUMBER(1,0)
);

