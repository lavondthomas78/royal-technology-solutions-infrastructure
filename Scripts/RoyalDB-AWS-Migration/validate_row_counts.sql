-- RoyalDB AWS Migration Validation
-- Purpose: Validate row counts after PostgreSQL migration

SELECT 'customer' AS table_name, COUNT(*) AS row_count FROM customer
UNION ALL
SELECT 'location', COUNT(*) FROM location
UNION ALL
SELECT 'device', COUNT(*) FROM device
UNION ALL
SELECT 'contract', COUNT(*) FROM contract
UNION ALL
SELECT 'technician', COUNT(*) FROM technician
UNION ALL
SELECT 'ticket', COUNT(*) FROM ticket
UNION ALL
SELECT 'ticket_assignment', COUNT(*) FROM ticket_assignment
ORDER BY table_name;
