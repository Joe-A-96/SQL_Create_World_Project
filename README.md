## 🌎 World Database Analysis & Geographical Data Extraction (SQL)

**A comprehensive SQL project focused on querying and analyzing global demographic, economic, and geographical data from the standard World Database (covering countries, cities, and languages).**

***

## 💡 Project Goal

The primary objective of this project was to utilize advanced **SQL techniques** to answer complex questions about global demographics and economics. The queries are designed to extract key insights, including:

1.  **Demographic Analysis:** Identifying cities by population size, life expectancy, and specific naming conventions.
2.  **Economic Comparison:** Calculating and comparing metrics like **GDP per Capita** across countries against a global average.
3.  **Geographical Segmentation:** Counting and listing cities within specific regions (e.g., "US cities," cities in "Europe").
4.  **Data Aggregation:** Determining the average city population per country and identifying unique data points.

***

## 🛠️ Key SQL Skills Demonstrated

The attached `create world db.sql` file showcases proficiency across fundamental and advanced SQL concepts:

### Advanced Data Analysis

* **Subqueries:** Employed **nested queries** (subqueries) to calculate dynamic benchmarks, such as determining which countries have a GDP per capita higher than the global average.
* **Calculated Fields:** Created custom metrics like **GDP per Capita** and **Population Density** on the fly.
* **Aggregation:** Used **`AVG()`**, **`COUNT()`**, and **`SUM()`** in conjunction with **`GROUP BY`** to summarize data by country or city name.

### Data Retrieval and Manipulation

* **JOIN Operations:** Used **`INNER JOIN`** to combine data across the `Country` and `City` tables based on `CountryCode`, enabling cross-table analysis.
* **Filtering & Conditions:** Applied a wide range of filtering techniques, including **`WHERE`**, **`LIKE`** (for pattern matching, e.g., finding cities with "new"), **`BETWEEN`** (for population ranges), and filtering by comparison operators.
* **Ordering and Limiting:** Used **`ORDER BY`** to rank results (e.g., by life expectancy or population) and **`LIMIT`** to retrieve top-N records.

### Database Best Practices

* **Aliasing:** Employed **Table and Column Aliases** (`AS`) to simplify complex queries and improve readability.
* **Distinct Aggregation:** Used **`COUNT(DISTINCT column)`** to accurately count unique values (e.g., unique city names).

***

## 💻 Code Snippets & Examples

The following snippet demonstrates calculating the average city population for each country, showcasing `JOIN` and `AVG()` aggregation:

```sql
SELECT
    co.name AS CountryName,
    AVG(c.population) AS "AVG City Population"
FROM
    country AS co
JOIN
    city AS c ON co.code = c.countrycode
GROUP BY
    co.name;
```
<img width="739" height="777" alt="image" src="https://github.com/user-attachments/assets/096afac7-ac2a-43e1-a69b-eee5c6d9fba3" />

```sql
SELECT
  c.name, (co.gnp*1000000/co.population) as GDP
FROM
  country as co
JOIN
  city as c
ON
  co.code = c.countrycode
WHERE
  (co.gnp*1000000/co.population) > (select avg(gnp*1000000/population) as GDP
FROM
  country)
ORDER BY
  gdp;

```
<img width="703" height="714" alt="image" src="https://github.com/user-attachments/assets/f055808d-2995-476a-89d8-e5df8330245a" />
