delimiter //
create procedure classicmodels.product_revenue(
in product varchar(200),
out revenue_by_product int 
)
begin
select sum(quantityordered * priceeach)
into revenue_by_product
from classicmodels.orderdetails
where productCode=product;
end //

delimiter ;

