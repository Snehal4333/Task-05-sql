select * from Product

--aggregate function

select product_id,name,sum(sales) from product group by Product_id,name

select sales,max (quantity) from product group by sales

select name,product_id from product group by name,product_id

--Where
	
select product_id,sum(quantity) from product where product_id IN (1,2,3) group by product_id 
	
select product_id,name,min(sales)from product where sales IN (2000,3000,4000)group by product_id,name 

select name,count(*) from product where Product_id>5 group by name

-- Where,Having	

select name,count(name)from product
	where quantity<10
	group by name 
	having max (quantity)>20 

select min(product_id)from product 
	where sales>1000
	group by name
	having sum(quantity)>15
		
select count(name) from Product
	where name='Computer'
	group by quantity 
	having quantity<15 

select count(name) from product 
	where quantity>20
	group by sales 
	having sales>2000

