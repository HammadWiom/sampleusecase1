-- models/change_column_datatype.sql

-- Select the columns to modify their data types
WITH selected_columns AS (
  SELECT column_name
  FROM information_schema.columns
  WHERE table_name = 't_account_mapping1'  -- Replace with your actual table name
    AND data_type = 'STRING'
    AND column_name LIKE '%time%'  -- Modify the pattern to match your column names
)

-- Generate SQL statements to alter the data types
SELECT
  'ALTER TABLE your_table_name ' || column_name || ' SET DATA TYPE TIMESTAMP' AS sql_statement
FROM selected_columns;
