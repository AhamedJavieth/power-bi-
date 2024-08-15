use guvi2nd;
with profit as (select products.`Unit Cost USD` ,products.`Unit Price USD`,products.`Product Name`,sales.`Quantity`,
(products.`Unit Price USD`- products.`Unit Cost USD`)*sales.`Quantity` as total_profit from products
 join sales on products.`ProductKey`= sales.`ProductKey`)
 select `Product Name`,`total_profit` from profit
 
 select count(*) from customer;