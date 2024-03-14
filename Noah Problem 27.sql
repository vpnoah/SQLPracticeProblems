Select e.emp_num, emp_fname, emp_lname, emp_email, total
from lgemployee as e join
(
	Select Employee_id, Sum(line_qty) as Total
	From lginvoice as I join lgline as L on i.inv_num = l.inv_num
	join lgproduct as p on l.prod_sku = p.prod_sku join
	lgbrand as b on b.brand_id = p.brand_id
	where brand_name = 'binder prime' and inv_date between '2017-11-01' and '2017-12-06'
	group by employee_id) as employeeSales on e.emp_Num = employeeSales.employee_id
where total = (Select max(total)
			from(Select Employee_id, Sum(line_qty) as Total
				From lginvoice as I join lgline as L on i.inv_num = l.inv_num
				join lgproduct as p on l.prod_sku = p.prod_sku join
				lgbrand as b on b.brand_id = p.brand_id
				where brand_name = 'binder prime' and inv_date between '2017-11-01' and '2017-12-06'
				group by employee_id) as employeeSales2)
order by emp_lname;