-- -====================================
-- Flyway Dry Run (2021-05-28 04:13:16)
-- -====================================

SET SCHEMA "UAT";

-- Executing: validate (with callbacks)
-- ---------------------------------------------------------------------------------------
CREATE TABLE "UAT"."flyway_schema_history" (
    "installed_rank" INT NOT NULL,
    "version" VARCHAR(50),
    "description" VARCHAR(200) NOT NULL,
    "type" VARCHAR(20) NOT NULL,
    "script" VARCHAR(1000) NOT NULL,
    "checksum" INT,
    "installed_by" VARCHAR(100) NOT NULL,
    "installed_on" TIMESTAMP DEFAULT CURRENT TIMESTAMP NOT NULL,
    "execution_time" INT NOT NULL,
    "success" SMALLINT NOT NULL,
    CONSTRAINT "flyway_schema_history_s" CHECK ("success" in(0,1))
);
ALTER TABLE "UAT"."flyway_schema_history" ADD CONSTRAINT "flyway_schema_history_pk" PRIMARY KEY ("installed_rank");
CREATE INDEX "UAT"."flyway_schema_history_s_idx" ON "UAT"."flyway_schema_history" ("success");
SET SCHEMA "UAT";

-- Executing: migrate (with callbacks)
-- ---------------------------------------------------------------------------------------
SET SCHEMA "UAT";

-- Executing: migrate -> v1.0.0 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Versioned\V1.0.0__CustomersTable.sql
-- -------------------------------------------------
CREATE TABLE customers (
    customer_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(25) NOT NULL,
    address VARCHAR(50),
    email VARCHAR(30),
PRIMARY KEY(customer_id)
);
INSERT INTO "UAT"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (1, '1.0.0', 'CustomersTable', 'SQL', 'Versioned/V1.0.0__CustomersTable.sql', -403177393, 'DB2INST1', 13, 1);
SET SCHEMA "UAT";

-- Executing: migrate -> v1.0.1 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Versioned\V1.0.1__DataInserts.sql
-- ----------------------------------------------
INSERT INTO customers (name,address,email) 
VALUES 
('Mr. T','101 E. Western Blvd','T@chain.com'),
('Bob','1432 W. Eastern Rd','Bob@builder.com'),
('Kiril','431 N. Southern Str','Kiril@Conway.com'),
('Default','100 Smith Ln','Def@ult.com'),
('Who','999 Telephone Way','The@Doctor.com'),
('Ravi','245 Strathern Blvd','R@vi.com');
INSERT INTO "UAT"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (2, '1.0.1', 'DataInserts', 'SQL', 'Versioned/V1.0.1__DataInserts.sql', -1714283104, 'DB2INST1', 12, 1);
SET SCHEMA "UAT";

-- Executing: migrate -> v1.0.2 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Versioned\V1.0.2__Add_Title.sql
-- --------------------------------------------
ALTER TABLE customers ADD COLUMN title VARCHAR(10);
INSERT INTO "UAT"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (3, '1.0.2', 'Add Title', 'SQL', 'Versioned/V1.0.2__Add_Title.sql', 1180363161, 'DB2INST1', 8, 1);
SET SCHEMA "UAT";

-- Executing: migrate -> v1.0.3 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Versioned\V1.0.3__OrdersTable.sql
-- ----------------------------------------------
CREATE TABLE orders (
	order_id INT GENERATED ALWAYS 
		AS IDENTITY NOT NULL,
	created_date DATE NOT NULL,
	PRIMARY KEY(order_id)
);
INSERT INTO "UAT"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (4, '1.0.3', 'OrdersTable', 'SQL', 'Versioned/V1.0.3__OrdersTable.sql', -1240857912, 'DB2INST1', 5, 1);
SET SCHEMA "UAT";

-- Executing: migrate -> v1.0.4 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Versioned\V1.0.4__Add_Col_Orders.sql
-- -------------------------------------------------
ALTER TABLE orders 
ADD COLUMN requested_date DATE NOT NULL DEFAULT CURRENT_DATE 
ADD COLUMN order_status SMALLINT NOT NULL DEFAULT 0;
INSERT INTO "UAT"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (5, '1.0.4', 'Add Col Orders', 'SQL', 'Versioned/V1.0.4__Add_Col_Orders.sql', -16695814, 'DB2INST1', 9, 1);
SET SCHEMA "DB2INST1";
SET SCHEMA "DB2INST1";
