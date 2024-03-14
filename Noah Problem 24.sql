Select lgproduct.brand_id, lgbrand.brand_name, lgbrand.brand_type, 
		format(avg(lgproduct.prod_price),2) as AvgPrice
from lgproduct join lgbrand on lgproduct.brand_id = lgbrand.brand_id
group by lgproduct.brand_id
having AvgPrice = (
	Select format(max(prices),2)
    from(select avg(prod_price) as prices
		from lgproduct
        group by brand_id) as avgprices
);




