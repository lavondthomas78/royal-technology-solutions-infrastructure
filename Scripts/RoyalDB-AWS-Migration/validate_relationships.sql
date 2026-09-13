-- RoyalDB AWS Migration Validation
-- Purpose: Validate relational joins across core RoyalDB entities

SELECT
    t.ticket_id,
    t.ticket_title,
    c.company_name,
    d.device_name,
    tech.first_name || ' ' || tech.last_name AS technician
FROM ticket t
JOIN customer c
    ON t.customer_id = c.customer_id
LEFT JOIN device d
    ON t.device_id = d.device_id
LEFT JOIN ticket_assignment ta
    ON t.ticket_id = ta.ticket_id
LEFT JOIN technician tech
    ON ta.technician_id = tech.technician_id
ORDER BY t.ticket_id;
