/*
==============================================================
Project : Google Merchandise Store Customer Journey Analytics

Author : Your Name

Objective

Analyse customer journeys, campaign performance,
conversion behaviour and revenue generation
using SQL.

==============================================================
*/


/*============================================================
SECTION 1 : DATA EXPLORATION
============================================================*/

-- 1. View complete dataset

SELECT *
FROM customer_journey;


-- 2. Total Customer Journeys

SELECT
COUNT(*) AS Total_Customer_Journeys
FROM customer_journey;


-- 3. Total Marketing Campaigns

SELECT
COUNT(DISTINCT Campaign) AS Total_Campaigns
FROM customer_journey;


-- 4. Total Revenue

SELECT
ROUND(SUM(Total_Revenue),2) AS Total_Revenue
FROM customer_journey;


-- 5. Average Revenue per Journey

SELECT
ROUND(AVG(Total_Revenue),2) AS Average_Revenue
FROM customer_journey;



/*============================================================
SECTION 2 : CUSTOMER JOURNEY ANALYSIS
============================================================*/

-- 6. Average Touchpoints before Conversion

SELECT
ROUND(AVG(total_touchpoints),2) AS Avg_Touchpoints
FROM customer_journey;


-- 7. Average Days till Conversion

SELECT
ROUND(AVG(days_to_key_event),2) AS Avg_Days_to_Conversion
FROM customer_journey;


-- 8. Longest Customer Journey

SELECT
path_id,
days_to_key_event
FROM customer_journey
ORDER BY days_to_key_event DESC
LIMIT 10;


-- 9. Customer Journeys generating highest Revenue

SELECT
path_id,
campaign,
total_revenue
FROM customer_journey
ORDER BY total_revenue DESC
LIMIT 10;



/*============================================================
SECTION 3 : CAMPAIGN PERFORMANCE
============================================================*/

-- 10. Revenue by Campaign

SELECT
campaign,
ROUND(SUM(total_revenue),2) AS Revenue
FROM customer_journey
GROUP BY campaign
ORDER BY Revenue DESC;


-- 11. Average Conversion Rate by Campaign

SELECT
campaign,
ROUND(AVG(conversion_rate),2) AS Conversion_Rate
FROM customer_journey
GROUP BY campaign
ORDER BY Conversion_Rate DESC;


-- 12. Campaign requiring highest Touchpoints

SELECT
campaign,
ROUND(AVG(total_touchpoints),2) AS Avg_Touchpoints
FROM customer_journey
GROUP BY campaign
ORDER BY Avg_Touchpoints DESC;


-- 13. Fastest Converting Campaign

SELECT
campaign,
ROUND(AVG(days_to_key_event),2) AS Avg_Days
FROM customer_journey
GROUP BY campaign
ORDER BY Avg_Days;



/*============================================================
SECTION 4 : REVENUE ANALYSIS
============================================================*/

-- 14. Revenue Contribution by Campaign

SELECT
campaign,
ROUND(SUM(total_revenue),2) AS Revenue
FROM customer_journey
GROUP BY campaign
ORDER BY Revenue DESC;


-- 15. Top Revenue Generating Journeys

SELECT
path_id,
campaign,
total_revenue
FROM customer_journey
ORDER BY total_revenue DESC
LIMIT 20;


-- 16. Revenue Distribution

SELECT
CASE

WHEN total_revenue <100 THEN 'Low Revenue'

WHEN total_revenue BETWEEN 100 AND 500 THEN 'Medium Revenue'

ELSE 'High Revenue'

END Revenue_Category,

COUNT(*) AS Journey_Count

FROM customer_journey

GROUP BY Revenue_Category;



/*============================================================
SECTION 5 : ADVANCED SQL
============================================================*/

-- 17. Rank Campaigns by Revenue

SELECT

campaign,

SUM(total_revenue) Revenue,

RANK() OVER(ORDER BY SUM(total_revenue) DESC) Revenue_Rank

FROM customer_journey

GROUP BY campaign;



-- 18. Revenue above Overall Average

SELECT *

FROM customer_journey

WHERE total_revenue >

(
SELECT AVG(total_revenue)

FROM customer_journey
);



-- 19. Campaign Performance using CTE

WITH CampaignPerformance AS

(

SELECT

campaign,

SUM(total_revenue) Revenue,

AVG(conversion_rate) ConversionRate

FROM customer_journey

GROUP BY campaign

)

SELECT *

FROM CampaignPerformance

ORDER BY Revenue DESC;



-- 20. Executive KPI Summary

SELECT

COUNT(*) Total_Journeys,

COUNT(DISTINCT campaign) Total_Campaigns,

ROUND(SUM(total_revenue),2) Total_Revenue,

ROUND(AVG(total_revenue),2) Average_Revenue,

ROUND(AVG(conversion_rate),2) Average_Conversion,

ROUND(AVG(total_touchpoints),2) Average_Touchpoints,

ROUND(AVG(days_to_key_event),2) Average_Days

FROM customer_journey;
