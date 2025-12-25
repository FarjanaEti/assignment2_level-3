
--Query 1
SELECT
    b.booking_id,
    u.name AS customer_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date,
    b.status
FROM bookings b
INNER JOIN users u
    ON b.user_id = u.user_id
INNER JOIN vehicles v
    ON b.vehicle_id = v.vehicle_id;

--Query 2
SELECT * FROM vehicles 
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings 
    WHERE bookings.vehicle_id = vehicles.vehicle_id
);

--Query 3
SELECT * FROM vehicles
WHERE status = 'available'
  AND type = 'car';

--Query 4
SELECT v.name AS vehicle_name, COUNT(*) AS total_bookings
FROM bookings b
JOIN vehicles v ON b.vehicle_id = v.vehicle_id
GROUP BY v.name
HAVING COUNT(*) > 2;



