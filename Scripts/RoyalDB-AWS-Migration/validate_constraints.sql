-- RoyalDB AWS Migration Validation
-- Purpose: Validate table constraints after migration

SELECT
    tc.table_name,
    tc.constraint_name,
    tc.constraint_type
FROM information_schema.table_constraints tc
WHERE tc.table_schema = 'public'
ORDER BY
    tc.table_name,
    tc.constraint_type,
    tc.constraint_name;
