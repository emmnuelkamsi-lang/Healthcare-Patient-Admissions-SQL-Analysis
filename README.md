# Healthcare Patient & Admissions SQL Analysis

A SQL-based analysis of patient records and hospital admissions data, covering patient demographics, billing patterns, medical conditions, and admission trends across doctors and years.

## Overview

This project uses SQL to explore two related tables — patient records and hospital admissions — to answer practical healthcare administration questions around patient demographics, cost of care, and hospital operations.

## Tools

- SQL (MySQL syntax)

## Business Questions Answered

**Patient Analysis**
- Which patients are male and over age 50?
- Who has the highest billing amount on record?
- How many patients fall under each medical condition?
- How many patients are there by gender?
- How many patients are covered by each insurance provider?
- What is the average billing amount per medical condition?

**Admissions Analysis**
- Which admissions lasted longer than two weeks?
- Which admissions occurred during 2022?
- How many admissions has each doctor handled?
- Which year had the highest number of admissions?
- What is the average billing amount for each admission type?

**Additional Analysis**
- What is the average patient age per medical condition?
- How are patients distributed across age groups (Under 18, 18-40, 41-60, 60+)?
- Who are the top 5 patients by billing amount?
- Which insurance provider generates the highest total billing amount?
- What is the average length of stay per doctor?
- What is the average length of stay per admission type?
- How do admissions trend by month across all years?

## Techniques Used

- Aggregate functions (`COUNT`, `AVG`, `MAX`) with `GROUP BY`
- Date functions (`DATEDIFF`, `YEAR`, `MONTH`) for admission duration and time-based trends
- Filtering with `WHERE` and `BETWEEN` for date ranges and demographic conditions
- Sorting and ranking results with `ORDER BY` and `LIMIT`
- Conditional logic with `CASE` for age-group bucketing

## How to Run

1. Load the dataset into a MySQL-compatible database as two tables: `patienttable sql1` and `admissiontable sql`.
2. Open `patientsql.sql` in your SQL client (MySQL Workbench, DBeaver, etc.).
3. Run each query individually to see the results for each business question.

## Author

Analysis by Emmanuel Kamsi.
