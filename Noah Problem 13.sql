Select customer.CUS_CODE, customer.cus_balance, Sum(line.line_price*line_units) as Total_Purchases
from Customer join Invoice on customer.cus_code = invoice.cus_code
join line on invoice.inv_number = line.INV_NUMBER
group by customer.cus_code
order by customer.cus_code;