Select l1.inv_num, l1.line_num, p1.prod_sku, p1.prod_descript, 
				l2.line_num, p2.prod_sku, p2.prod_descript, p1.brand_id
from (lgline as l1 join lgproduct as p1 on l1.prod_sku = p1.prod_sku) join
 (lgline as l2 join lgproduct as p2 on l2.prod_sku = p2.prod_sku) on l1.INV_NUM = l2.inv_num
where p1.prod_category = 'Sealer' and p2.prod_category = 'top coat' and p1.BRAND_ID = p2.brand_id
order by l1.inv_num , l1.line_num , l2.line_num desc;