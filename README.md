# SILVERSCREEN
🎬 Silver Screen Movie Theater Efficiency Analysis
📌 Project Overview
Silver Screen is a recently acquired movie theater chain in New Jersey with three distinct locations. As part of an internal performance audit, the Entertainment Company (parent organization) tasked the Business Intelligence (BI) team with analyzing the operational efficiency of these theaters. The core objective is to explore the relationship between movie rental costs and revenue generated, to guide data-driven decision-making on profitability and operational strategies.

This project aims to build a monthly performance model for each movie shown across all Silver Screen locations, providing a unified view that combines movie metadata, rental costs, ticket sales, and total revenue.

🎯 Objective
Develop a consolidated table with the following granularity:

movie_id

movie_title

genre

studio

month

location

rental_cost

tickets_sold

revenue

This table will help the leadership team:

Identify high-performing movies.

Compare revenue vs. rental cost by location.

Detect underperforming locations or titles.

Make strategic content and location decisions.

🗃️ Data Sources
The data is derived from five different sources, each with unique structures:

movie_catalogue: Metadata for movies rented in 2024 (title, genre, studio, etc.).

invoices: Rental cost per movie per location and month.

nj_001: Raw transaction-level data for Location 1.

nj_002: Aggregated daily sales data for Location 2.

nj_003: Mixed product-level sales (tickets, snacks, etc.) for Location 3, requiring filtering by product_type.

🔍 Challenges Addressed
Data inconsistency across locations: Different structures, column names, and granularities.

Data cleaning: Standardizing formats (e.g., converting month strings to dates), unifying naming conventions.

Complex filtering: Extracting movie_id from nested fields and isolating ticket sales from mixed purchase data.

Aggregation: Harmonizing daily and transaction-level data to a monthly level.

🛠️ Tools & Technologies
dbt (Data Build Tool): For modeling, transformation, and documentation.

Snowflake: Cloud data warehouse used to query and store the transformed data.

SQL: Core language used for transformations and modeling.

📈 Final Output
The final fact table provides a holistic monthly summary for each movie, showing its financial performance at each Silver Screen location. It is built through a modular dbt pipeline involving:

Source freshness testing

Staging and cleaning

Intermediate aggregation

Final model combining all cleaned and enriched data

