# Vehicle Rental System - Database Design & SQL Queries

## Overview & Objectives

This project focuses on the implementation of a relational database for a simplified Vehicle Rental System.
The purpose of this assignment is to evaluate understanding of **database table design, relationships, and SQL query execution**.

Key Learning Outcomes:
ERD Design: Modeling 1:1, 1:M, and M:1 relationships.
Data Integrity: Implementing Primary Keys (PK) and Foreign Keys (FK).
Advanced Scripting: Utilizing **JOIN**, **EXISTS**, **WHERE**, **GROUP BY**, and **HAVING**

## Database Schema & Business Logic

The system is built around three core entities that manage the lifecycle of a vehicle rental:

--Entities & Relationships

1.Users: Stores customer information (Name, Email, License details).

2.Vehicles: Contains inventory data (Make, Model, Year, Daily Rate, Availability Status).

3.Bookings: The bridge entity connecting Users and Vehicles.

Relationship: A User can have many Bookings (1:M).

Relationship: A Vehicle can be associated with many Bookings over time (1:M).

**Relationships:**

- One User → Many Bookings (1-to-Many)
- One Vehicle → Many Bookings (1-to-Many)
- Each Booking → Exactly One User and One Vehicle (Many-to-1)

## SQL Queries

1. **Retrieve booking information along with customer and vehicle names**
   --SQL Technique USED:INNER JOIN
   --Description: Combining User and Vehicle data through the Bookings table.

2. **Find vehicles that have never been booked**

--SQL Technique USED:NOT EXISTS
--Description: Identifying vehicles that do not have active overlapping bookings.

3. **Retrieve all available vehicles of a specific type**

--SQL Technique USED:SUM & GROUP BY
--Description: Calculating total earnings per vehicle or user.

4.**Find total bookings per vehicle (more than 2 bookings)**

--SQL Technique USED:WHERE
--Description: Narrowing results by date ranges, vehicle types, or user status.

#### How to Use This Project

1.Schema Creation: Run the DDL (Data Definition Language) scripts to create the tables.

2.Data Insertion: Populate the tables with sample records provided in the setup script.

3.Analysis: Execute the queries found in queries.sql to view the results of the business logic requirements.
