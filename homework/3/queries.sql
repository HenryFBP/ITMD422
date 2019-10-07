
-- Replace all double-spaces with single spaces.
UPDATE my_table
SET my_field = (REPLACE(my_field, '  ', ' '))
FROM my_table
WHERE (CHARINDEX('  ', my_field) > 0);

-- Find duplicate rows
SELECT *, COUNT(*)
FROM table_name
GROUP BY duplicated_column
HAVING COUNT(*) > 1

-- Delete rows with a numerical column
DELETE FROM my_table
WHERE (ISNUMERIC(my_column) = 1);