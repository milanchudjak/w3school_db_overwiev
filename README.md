
In this project we have worked with the publicly database accesible at the website https://www.w3schools.com/sql.

The project includes a database of a company that deals with the sale of food to final customers in individual countries of Europe, North and South America. The database includes data necessary for the operation of the store, data about customers, orders, products, employees and suppliers.

## Description of the database

The database consists of 8 tables. The largest table, OrderDertails, contains 518 rows and 4 columns. The picture below depicts all the tables and the names of the columns they contain. Text in bold indicates the name of the table. The first row below the table name is the unique identifier (CustomerID, OrderID, ...) of the record (row) in the given table. By the unique identifier, the data in the table can be linked to other tables.



![Database schema](.images/Prepojene_tabulky_Text.jpg "This is the database schema.")


## Basic statistics

Statistics obtained with group by and basic aggregation functions such as count or avg are stored in the directory basic_statistics. These statistics illustrate, how many products the company has, their prices, number of customers, employees, total purchases of the company products.


| Name of statistic		            | Description | Price |
| :---------------- | :------ | ----: |
| Num of active customers        |  Number of active customers, (some customers are registered but did not make a purchase)   | 74 |
|Num Cities overall          |   Number of cities, which the customers are from   |69 |
|Num countries overall   |  Number of countries, where the customers are from   | 22 |
| Num of Distinct European Countries |  Number of the European countries, where the company customers are from  | 13 |
| Num of active employees |Number of active employees (couple of them are idle employees) | 9  |
| Num of Categories | Number of categories into the products are organized | 8 |
| Num of ProductID | Numbers of company products | 77 | 
|Numbers of company products | Average unit product price calculated from all products in the database | 28,87 |
|Num of distinct OrderID | The number of individual orders of the customers | 196 |

## Advanced statistics

In advanced statistics, more complex selections were made by joining multiple tables, and then aggregating resulting tables. The statistics would be intended for the management in order to provide data for more accurate planning of the future development of the business.


| Name of statistics  | Description | Result |
| ------------- |------------- | ------------- |
| Countries with best sales of diary products | Countries with best sales of dairy products (CategoryID – 4)     |Germany, USA, Austria |
| Order_counts by size      | Orders are divided into 3 groups, according to the total price of the order, small (up to 500 eur), medium between 500 and 5000 Eur, large over 5000 Eur. Subsequently, the total number of orders in each group is counted. |Large: 12, Medium: 144, Small: 40|
|top 5 customers with the highest order|The TOP five customers with the highest orders overall. | Rank - Order amount  <br> 1. - 15353 <BR> 2. - 14366 <BR> 3. - 14104 <BR> 4. - 13427 <BR> 5. - 9244|

## Campaigns
This section shows the results of queries, with the help of which the customers would be addressed in the campaign. In the table below, we present the results of the selects, based on which customer IDs were subsequently selected.


| Name of statistics  | Description | Result |
| ------------- |------------- | ------------- |
|Cities with the highes sales of the given product |Cities with the best sales of product Louisiana Fiery Hot Pepper Sauce (ProductID 65) in the time range 1.7.1996 to 1.12.1996.  | Lyon 430,00 <br> Rio de Janeiro 322,50 <BR> Århus 322,50 |
