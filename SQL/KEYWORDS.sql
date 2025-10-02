-- order of keywords:
-- SELECT …       → choose columns
-- FROM …         → table(s)
-- WHERE …        → filter rows
-- GROUP BY …     → group rows
-- HAVING …       → filter groups
-- ORDER BY …     → sort results
-- LIMIT …        → limit number of rows (optional)

-- 1. DDL (Data Definition Language) – Defines or modifies database structure
-- CREATE DATABASE – Makes a new database
-- DROP DATABASE – Deletes a database
-- CREATE TABLE – Makes a new table
-- ALTER TABLE – Changes the structure of a table (columns, data types, constraints)  -- Add a new column, change data type, rename a column or table name
-- DROP TABLE – Deletes a entire table
-- CREATE INDEX – Makes an index
-- TRUNCATE TABLE – Deletes all rows but keeps table structure

-- 2. DML (Data Manipulation Language) – Manipulates data in tables
-- INSERT INTO – Adds new data for a new table
-- VALUES – Specifies data to insert
-- UPDATE – Changes the data/content inside the table -- Change a student's grade, update a salary value , set values for the columnns
-- SET – Specifies columns to update
-- DELETE – Removes data like specific data

-- 3. DQL (Data Query Language) – Retrieves data
-- SELECT – Gets data from table
-- FROM – Specifies table for SELECT
-- WHERE – Filters data
-- ORDER BY – Sorts data
-- GROUP BY – Groups rows
-- HAVING – Filters grouped rows
-- DISTINCT – Gets unique values
-- JOIN / INNER JOIN / LEFT JOIN / RIGHT JOIN / FULL JOIN – Combines tables
-- LIKE – Searches for pattern
-- IN – Checks if value exists in list
-- BETWEEN – Filters range
-- IS NULL / IS NOT NULL – Checks for nulls

-- 4. TCL (Transaction Control Language) – Manages transactions
-- COMMIT – Saves changes permanently
-- ROLLBACK – Reverts back to changes
-- SAVEPOINT – Sets a saving point to rollback partially
-- SET TRANSACTION – Sets transaction properties

-- 5. Aggregate / Functions (can be considered part of DQL/DML usage)
-- COUNT() – Counts rows
-- SUM() – Adds values
-- AVG() – Calculates average
-- MIN() / MAX() – Finds smallest/largest value
