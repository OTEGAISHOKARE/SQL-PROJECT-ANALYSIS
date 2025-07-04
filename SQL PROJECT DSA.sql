
select * from [KMS Sql Case Study]

------------1. PRODUCT WITH HIGHEST SALES
select TOP 1 Product_Category, sum([sales]) as [total sales]
from [KMS Sql Case Study]
group by Product_Category
order by [total sales] desc


select * from [KMS Sql Case Study]

-------2a. TOP 3 REGION BY SALES-----
select top 3 Region, sum([sales]) as [Total sales]
from [KMS Sql Case Study]
group by Region
order by [Total sales] desc

----- 2b. BOTTOM 3 REGION BY SALES---------
select top 3 Region, sum([sales]) as [Total sales]
from [KMS Sql Case Study]
group by Region
order by [Total sales] asc

------3. TOTAL SALES IN ONTARIO-------
select Product_Category, sum(sales) as [total sales]
from [KMS Sql Case Study]
where Region = 'Ontario'
group by Product_Category

ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Product_Base_Margin
DECIMAL (10,2);

--------4. BOTTOM 10 CUSTOMERS----
select top 10 Customer_Name,Shipping_Cost,Product_Category,Ship_Mode,Discount,Unit_Price,sum(Order_Quantity) as [total Order_Quantity]
from [KMS Sql Case Study]
group by Customer_Name,Shipping_Cost,Ship_Mode,Product_Category,Discount,Unit_Price
order by [total Order_Quantity] asc

---------5. MOST SHIPPING COST-----
Select TOP 1 Ship_Mode,sum([shipping_cost]) as [total shipping_cost]
from [KMS Sql Case Study]
group by Ship_Mode
order by [total shipping_cost] desc

------- 6. MOST VALUABLE CUSTOMER-------
select Customer_Segment,Product_Sub_Category,Customer_Name,sum([sales]) as [total sales]
from [KMS Sql Case Study]
group by Customer_Segment,Product_Sub_Category,Customer_Name
order by [total sales] desc

------- 7. SMALL BUSINESS HIGHEST SALES------
Select top 1 *
from [KMS Sql Case Study]
where Customer_Segment = 'SMALL BUSINESS'
ORDER BY Sales desc

------8. CORPORATE CUSTOMER HIGHEST ORDER------
SELECT TOP 1 *
FROM [KMS Sql Case Study]
WHERE Customer_Segment = 'CORPORATE'
ORDER BY Order_Quantity DESC

-------9. PROFITABLE CONSUMER CUSTOMER-------
SELECT TOP 1 *
FROM [KMS Sql Case Study]
WHERE Customer_Segment = 'CONSUMER'
ORDER BY Profit DESC

------10. RETURNED ITEMS-------
SELECT NULL FROM [KMS Sql Case Study]
ORDER BY Customer_Segment