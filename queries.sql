 -- Query 1: JOIN 
 --Retrieve booking information along with:

--Customer name
--Vehicle name

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


-- Query 2: EXISTS
-- Find all vehicles that have never been booked.

SELECT  *
FROM Vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM Bookings b
    WHERE b.vehicle_id = v.vehicle_id
);


-- Query 3: WHERE 
-- Retrieve all available vehicles of a specific type (e.g. cars).

select  *
from
  vehicles
where
  status = 'available'
and type  = 'car' ;




--GROUP BY and HAVING 
-- Find the total number of bookings for each vehicle and display only those vehicles that have -- more than 2 bookings.


SELECT
  v.name, COUNT(*) AS total_bookings
FROM
  vehicles AS v
JOIN
  bookings AS b
    ON v.vehicle_id = b.vehicle_id
GROUP BY v.name
HAVING COUNT(*) > 2;