Select format(max(averagePrice),2) as "Largest Average Price"
from(
	Select avg(prod_price) as "averagePrice"
    from lgproduct
    group by brand_id
    ) as b