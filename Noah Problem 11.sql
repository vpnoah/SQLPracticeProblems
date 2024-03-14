Select Customer.Cus_code, Invoice.Inv_Number, Invoice.inv_date, product.P_DESCRIPT, line.line_units, line.LINE_PRICE
from Customer join Invoice on customer.cus_code = invoice.cus_code
join line on invoice.inv_number = line.inv_number
join product on product.p_code = line.p_code
order by customer.cus_code, invoice.INV_NUMBER, product.P_DESCRIPT;