# Vehicle Rental System – Database Design & SQL Queries

## Overview
This project demonstrates a simplified **Vehicle Rental System** with Users, Vehicles, and Bookings.  
It covers:

- ERD design with relationships  
- Primary and Foreign Keys  
- SQL queries using JOIN, EXISTS, WHERE, GROUP BY, HAVING  

---

## Database Design

### Tables

**Users**  
- user_id (PK)  
- role (Admin / Customer)  
- name  
- email (unique)  
- password  
- phone  

**Vehicles**  
- vehicle_id (PK)  
- name  
- type (car / bike / truck)  
- model  
- registration_number (unique)  
- rental_price_per_day  
- status (available / rented / maintenance)  

**Bookings**  
- booking_id (PK)  
- user_id (FK → Users.user_id)  
- vehicle_id (FK → Vehicles.vehicle_id)  
- start_date  
- end_date  
- status (pending / confirmed / completed / cancelled)  
- total_cost

### Relationships
- **One to Many**: User → Bookings  
- **Many to One**: Bookings → Vehicle  
- **Logical One to One**: Each booking connects one user and one vehicle  

---

# ERD Design
- link : https://lucid.app/lucidchart/5d42fa9c-fddd-4e14-a5a3-563b76cb4458/edit?viewport_loc=121%2C113%2C2217%2C1052%2C0_0&invitationId=inv_9d1d5ff1-34fd-4b91-b03c-e5c0a75b0fe9


##  SQL Queries

### Query 1 – Booking Information (JOIN)

```
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

```
#### Purpose: Retrieve booking info along with customer and vehicle names.

