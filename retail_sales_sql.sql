create database retail_sales_db;

use retail_sales_db;

select * from retail_sales
where category='Electronics' and Quantity >2;

select category ,sum(Total_Amount) as total_revenue
from retail_sales
group by category;

select City,count(City) as total_customer
from retail_sales
group by city;

SELECT 
    `Order_ID`,
    `Customer_ID`,
    `Total_Amount`,
    CASE 
        WHEN `Total_Amount` > 5000 THEN 'Yes'
        ELSE 'No'
    END AS HighValueOrder
FROM Retail_Sales;

select * from retail_sales
order by Total_Amount desc
limit 10;

select * from retail_sales
WHERE Year = 2024
  AND Month = 'November';
  
select Customer_Segment,
avg(Rating) as avg_rating,
sum(Discount) as Total_Discount
from retail_sales
group by Customer_Segment;  

SELECT 
    Payment_Method,
    COUNT(*) AS Total_Orders
FROM Retail_Sales
GROUP BY Payment_Method
ORDER BY Total_Orders DESC;






