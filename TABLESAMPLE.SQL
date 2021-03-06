CREATE SCHEMA DEVTEST;
DROP TABLE "DEVTEST"."MYEMPLOYEES" CASCADE;
CREATE COLUMN TABLE "DEVTEST"."MYEMPLOYEES" 
(
"EMPID" INTEGER,
"EMP" VARCHAR(20),
"ROLE" VARCHAR(20),
"SALARY" INTEGER
);

INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(1,'Christiano','Manager',500000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(2,'Eric','Manager',350000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(3,'Ryan','Director',450000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(4,'Bryan','Director',150000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(5,'Doreen','Manager',500000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(6,'Gabriel','Manager',350000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(7,'Angel','Director',450000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(8,'Robin','Director',150000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(9,'Sarah','Manager',500000);
INSERT INTO "DEVTEST"."MYEMPLOYEES" VALUES(10,'Peter','Manager',350000);

SELECT 'System' "Method", COUNT(*) "Count", AVG(SALARY) AS "Avg. Salary" FROM DEVTEST.MYEMPLOYEES TABLESAMPLE SYSTEM (50) 
UNION ALL
SELECT 'Bernoulli', COUNT(*), AVG(SALARY) FROM DEVTEST.MYEMPLOYEES TABLESAMPLE BERNOULLI (50)
UNION ALL
SELECT 'All Records', COUNT(*), AVG(SALARY) FROM DEVTEST.MYEMPLOYEES;

SELECT 'System' "Method", * FROM DEVTEST.MYEMPLOYEES TABLESAMPLE SYSTEM (50) 
UNION ALL
SELECT 'Bernoulli', * FROM DEVTEST.MYEMPLOYEES TABLESAMPLE BERNOULLI (50);
