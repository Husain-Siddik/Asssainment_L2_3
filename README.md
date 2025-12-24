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
