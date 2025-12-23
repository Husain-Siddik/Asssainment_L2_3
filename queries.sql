-- first  
SELECT
    bookings.booking_id,
    users.name AS customer_name,
    vehicles.name AS vehicle_name,
    bookings.start_date,
    bookings.end_date,
    bookings.status
FROM
    bookings
JOIN users ON bookings.user_id = users.user_id
JOIN vehicles ON bookings.vehicle_id = vehicles.vehicle_id;

-- second 
SELECT  *
FROM Vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM Bookings b
    WHERE b.vehicle_id = v.vehicle_id
);


-- 3rd 

select  *
from
  vehicles
where
  status = 'available'
and type  = 'car'


--4th

SELECT
  v.name, COUNT(*) AS total_bookings
FROM
  vehicles AS v
JOIN
  bookings AS b
    ON v.vehicle_id = b.vehicle_id
GROUP BY v.name
HAVING COUNT(*) > 2;