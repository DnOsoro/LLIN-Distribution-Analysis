/*This query selects all columns and rows from the data - amf_distributions table. 
It's useful for getting an overview of the entire dataset.*/
SELECT * FROM llin_analysis.`data - amf_distributions`;

/*This query calculates the total number of LLINs distributed per country and orders the results in descending order, 
showing the top 10 countries. This helps identify the countries that received the most LLINs.*/
SELECT country, sum(Number_distributed) as Total_LLINS_Distributed
 FROM llin_analysis.`data - amf_distributions`
 group by country
 order by sum(Number_distributed) desc
 limit 10;

/*This query calculates the average number of LLINs distributed across all entries in the dataset. 
It provides an insight into the general distribution trend.*/ 
select avg(Number_distributed) as Average_LLINS_Distributed
from llin_analysis.`data - amf_distributions`;

/*This query finds the earliest and latest years in the dataset. It helps understand the time range of the data.*/
select min(year) as earliest_year, 
max(year) as latest_year
FROM llin_analysis.`data - amf_distributions`;

/*This query calculates the total number of LLINs distributed by each entity (e.g., organizations or individuals) 
and orders the results in descending order. This shows which entities were the most active in distributing LLINs.*/
SELECT by_whom, SUM(Number_distributed) AS Total_LLINS_Distributed
FROM llin_analysis.`data - amf_distributions`
GROUP BY by_whom 
order by SUM(Number_distributed) desc;

/*This query identifies the location with the highest total number of LLINs distributed. 
It helps pinpoint where the most significant distribution efforts were focused.*/
SELECT location, SUM(Number_distributed) AS Total_LLINS_Distributed
FROM llin_analysis.`data - amf_distributions`
GROUP BY location 
order by SUM(Number_distributed) desc
limit 1;


/*This query identifies the location with the lowest total number of LLINs distributed. 
It helps identify areas that might have been underserved.*/
SELECT location, SUM(Number_distributed) AS Total_LLINS_Distributed
FROM llin_analysis.`data - amf_distributions`
GROUP BY location 
order by SUM(Number_distributed) asc
limit 1;


/*This query calculates the total number of LLINs distributed each year and orders the 
results in descending order. It helps analyze the distribution trends over time.*/
SELECT year, SUM(Number_distributed) AS Total_LLINS_Distributed
FROM llin_analysis.`data - amf_distributions`
GROUP BY year 
order by SUM(Number_distributed) desc;







