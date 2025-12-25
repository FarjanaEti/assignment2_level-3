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
