-- this syntax is used for testing the standard deviation and variance functions in SAP HANA 

CREATE SCHEMA DEVTEST;
DROP TABLE DEVTEST.TESTRESULTS CASCADE;
CREATE COLUMN TABLE DEVTEST.TESTRESULTS (
	NAME VARCHAR(20),
	SCORE INTEGER
);

INSERT INTO DEVTEST.TESTRESULTS VALUES('Gern',8);
INSERT INTO DEVTEST.TESTRESULTS VALUES('Ignacita',10);
INSERT INTO DEVTEST.TESTRESULTS VALUES('Jamie',4);
INSERT INTO DEVTEST.TESTRESULTS VALUES('Smitty',7);
INSERT INTO DEVTEST.TESTRESULTS VALUES('Doreen',9);
INSERT INTO DEVTEST.TESTRESULTS VALUES('Hazel',7);

SELECT
 VAR_SAMP(SCORE) AS "VAR_SAMP", 
 STDDEV_SAMP(SCORE) AS "STDDEV_SAMP",
 STDDEV(SCORE) AS "STDDEV",
 VAR_SAMP(SCORE) AS "VAR"
FROM TESTRESULTS;

SELECT
 VAR_POP(SCORE) AS "VAR_POP", 
 STDDEV_POP(SCORE) AS "STDDEV_POP"
FROM TESTRESULTS;