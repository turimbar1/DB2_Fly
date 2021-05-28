-- -====================================
-- Flyway Dry Run (2021-05-28 04:13:02)
-- -====================================

SET SCHEMA "Test";

-- Executing: undo (with callbacks)
-- ---------------------------------------------------------------------------------------
SET SCHEMA "Test";

-- Executing: undo -> v1.0.4 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Undo\U1.0.4__Drop_Col_Orders.sql
-- ---------------------------------------------
ALTER TABLE orders 
DROP COLUMN requested_date  
DROP COLUMN order_status;
INSERT INTO "Test"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (36, '1.0.4', 'Drop Col Orders', 'UNDO_SQL', 'Undo/U1.0.4__Drop_Col_Orders.sql', 1604632158, 'DB2INST1', 11, 1);
SET SCHEMA "Test";

-- Executing: undo -> v1.0.3 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Undo\U1.0.3__Drop_OrdersTable.sql
-- ----------------------------------------------
DROP TABLE orders;
INSERT INTO "Test"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (37, '1.0.3', 'Drop OrdersTable', 'UNDO_SQL', 'Undo/U1.0.3__Drop_OrdersTable.sql', 392885628, 'DB2INST1', 5, 1);
SET SCHEMA "Test";

-- Executing: undo -> v1.0.2 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Undo\U1.0.2__Drop_Title.sql
-- ----------------------------------------
ALTER TABLE customers DROP COLUMN title;
INSERT INTO "Test"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (38, '1.0.2', 'Drop Title', 'UNDO_SQL', 'Undo/U1.0.2__Drop_Title.sql', -626936101, 'DB2INST1', 5, 1);
SET SCHEMA "Test";

-- Executing: undo -> v1.0.1 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Undo\U1.0.1__TruncateCustomers.sql
-- -----------------------------------------------
INSERT INTO "Test"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (39, '1.0.1', 'TruncateCustomers', 'UNDO_SQL', 'Undo/U1.0.1__TruncateCustomers.sql', 1635868576, 'DB2INST1', 11, 1);
SET SCHEMA "Test";

-- Executing: undo -> v1.0.0 (with callbacks)
-- ---------------------------------------------------------------------------------------

-- Source: sql\Undo\U1.0.0__Drop_CustomersTable.sql
-- -------------------------------------------------
DROP TABLE Customers;
INSERT INTO "Test"."flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "execution_time", "success") VALUES (40, '1.0.0', 'Drop CustomersTable', 'UNDO_SQL', 'Undo/U1.0.0__Drop_CustomersTable.sql', 1240976200, 'DB2INST1', 8, 1);
SET SCHEMA "DB2INST1";
SET SCHEMA "DB2INST1";
