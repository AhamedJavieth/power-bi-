use guvi2nd;

WITH gender as(select products.`Color`,
			   sales.`CustomerKey`,sales.`Quantity`
               from products 
               join sales on sales.`ProductKey`= products.`Productkey`),
final as (select  gender.`Color` ,customer.`Gender`,sum(gender.`Quantity`)as totalquantity from gender join customer on customer.`CustomerKey`= gender.`CustomerKey`
group by gender.`Color`, customer.`Gender` order by gender.Color asc)       
select* from final;              