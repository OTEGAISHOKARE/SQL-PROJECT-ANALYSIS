# SQL-PROJECT-ANALYSIS
This analysis is the breakdown of the KULTRA MEGA STORES INVENTORY (office supplies and furnitures) dataset from 2009-2012.
This project is given to me by the DIGITAL SKILLUP AFRICA in order to access how familiar I have gotten to know my SQL and how to use it in analysing data efficiently.

## PROJECT TOPIC: KULTRA MEGA STORE REVIEW

### Project Overview
This Data Analysis project aims to generate insight into the sales performance of the KULTRA MEGA STORES. By analysing the various parameters in the data received, I seek to gain enough insight to make reasonable decisions which then enable me to give compelling summarization around the data analyzed and to know which category of goods is selling out more and what we can do to imorove sales and eliminate unnecessary waste of resource.

### Data Source
The primary Data source of the Data used here is kuultra mega stores inventory (case study) and this is an open source data that was shared by the DSA Facilitators.

### Tools used
- MY SQL for Data cleaning 
- SQL queries for Data Analysis

### Data Cleaning and Preparation
In the initial phase of the Data cleaning and preparations, I performed the following actions;
1. Data loading and Inspection
2. Handling missing variables
3. Data cleaning and formatting
4. Data analysing

### Exploratory Data Analysis
Some questions analysed with the Data Includes;
- Which Product Category has the highest sales.
- Where is the Top 3 regions and bottom 3 regions in term of sales
- What were the total sales of appliances in Ontario.
- The most shipping cost was incurred using which method?
- Which small business customer had the highest sales?
- Which consumer customer was the most profitable one?
- Which customer returned item?
- Who are the most valuable customers?
  
### DATA ANALYSIS
------1. PRODUCT WITH HIGHEST SALES------
``` SQL
select TOP 1 Product_Category, sum([sales]) as [total sales]
from [KMS Sql Case Study]
group by Product_Category
order by [total sales] desc

```

select * from [KMS Sql Case Study]

-------2a. TOP 3 REGION BY SALES-----
``` SQL
select top 3 Region, sum([sales]) as [Total sales]
from [KMS Sql Case Study]
group by Region
order by [Total sales] desc

``` 
----- 2b. BOTTOM 3 REGION BY SALES---------
``` SQL
select top 3 Region, sum([sales]) as [Total sales]
from [KMS Sql Case Study]
group by Region
order by [Total sales] asc

```

------3. TOTAL SALES IN ONTARIO-------
``` SQL
select Product_Category, sum(sales) as [total sales]
from [KMS Sql Case Study]
where Region = 'Ontario'
group by Product_Category

```
``` SQL
ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Product_Base_Margin
DECIMAL (10,2);

``` 

--------4. BOTTOM 10 CUSTOMERS----
``` SQL
select top 10 Customer_Name,Shipping_Cost,Discount,Unit_Price,sum(Order_Quantity) as [total Order_Quantity]
from [KMS Sql Case Study]
group by Customer_Name,Shipping_Cost,Discount,Unit_Price
order by [total Order_Quantity] asc

``` 

---------5. MOST SHIPPING COST-----
``` SQL
Select TOP 1 Ship_Mode,sum([shipping_cost]) as [total shipping_cost]
from [KMS Sql Case Study]
group by Ship_Mode
order by [total shipping_cost] desc

```

------- 6. MOST VALUABLE CUSTOMER-------
``` SQL
select Customer_Segment,Product_Sub_Category,Customer_Name,sum([sales]) as [total sales]
from [KMS Sql Case Study]
group by Customer_Segment,Product_Sub_Category,Customer_Name
order by [total sales] desc

``` 
------- 7. SMALL BUSINESS HIGHEST SALES------
``` SQL
Select top 1 *
from [KMS Sql Case Study]
where Customer_Segment = 'SMALL BUSINESS'
ORDER BY Sales desc

``` 
------8. CORPORATE CUSTOMER HIGHEST ORDER------
``` SQL
SELECT TOP 1 *
FROM [KMS Sql Case Study]
WHERE Customer_Segment = 'CORPORATE'
ORDER BY Order_Quantity DESC

``` 
-------9. PROFITABLE CONSUMER CUSTOMER-------
``` SQL
SELECT TOP 1 *
FROM [KMS Sql Case Study]
WHERE Customer_Segment = 'CONSUMER'
ORDER BY Profit DESC

``` 
------10. RETURNED ITEMS-------
``` SQL
SELECT NULL FROM [KMS Sql Case Study]
ORDER BY Customer_Segment

``` 
### CONCLUSION DRAWN FROM THE ABOVE ANALYSIS
- The product category with the highest sale is TECHNOLOGY with 5,984,248 sales.
- The top 3 region in term of sales
  _ WEST
  _ ONTARIO
  _ PRARIE
  
- The bottom 3 region in term of sales
_ NUNAVAT
_ NORTHWEST TERRITORIES
_ YUKON

- Total sales of appliances in ONTARIO
- Office Supplies: 927,431.25
- Furniture: 1,109,617.50
- Technology: 1,026,163.85

- To increase the revenue from the bottom 10 costumers, showcase to them other available office supplies that they haven't gotten before and let them see reason as to why it is advisable for them to get it, enticing them with a discount on purchase of goods from 3 above. Give them reasons to buy in bulk.

- Most valuable customer is the CONSUMER customer

- Highest sales from Small Business owner is 33,367.85 with order quantity of 9

- Corporate customer highest order is a total of 50 quantity, product purchased: Tables

- Profitable Consumer Customer with profit of 27,220.69

- No record of items returned.

### Recommendations 
With delivery truck being the most exonomical but slowest shipping method, it is advisable to use the Express Air for Only Critical and High order priority. As for regular Air, the Medium priority order should be sent using this ship mode and then lastly the Delivery truck can be used to deliver goods that are of low priority and the ones not specified.
This way, both the company and customer can be satisfied with the delivery cost and timing.

### Reference 
- *SQL table*
- *KMS inventory case study*
- *DSA facilitators*
