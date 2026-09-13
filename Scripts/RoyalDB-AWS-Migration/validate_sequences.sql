-- RoyalDB AWS Migration Validation
-- Purpose: Compare current maximum IDs with PostgreSQL sequence values

SELECT
    'customer' AS table_name,
    MAX(customer_id) AS max_id,
    last_value AS sequence_value
FROM customer, customer_customer_id_seq
GROUP BY last_value

UNION ALL

SELECT
    'location',
    MAX(location_id),
    last_value
FROM location, location_location_id_seq
GROUP BY last_value

UNION ALL

SELECT
    'device',
    MAX(device_id),
    last_value
FROM device, device_device_id_seq
GROUP BY last_value

UNION ALL

SELECT
    'contract',
    MAX(contract_id),
    last_value
FROM contract, contract_contract_id_seq
GROUP BY last_value

UNION ALL

SELECT
    'technician',
    MAX(technician_id),
    last_value
FROM technician, technician_technician_id_seq
GROUP BY last_value

UNION ALL

SELECT
    'ticket',
    MAX(ticket_id),
    last_value
FROM ticket, ticket_ticket_id_seq
GROUP BY last_value

UNION ALL

SELECT
    'ticket_assignment',
    MAX(assignment_id),
    last_value
FROM ticket_assignment, ticket_assignment_assignment_id_seq
GROUP BY last_value

ORDER BY table_name;
