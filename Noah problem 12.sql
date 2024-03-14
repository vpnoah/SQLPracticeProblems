Select Customer.Cus_code, Invoice.Inv_Number, product.P_DESCRIPT, line.line_units as Units_Bought, line.LINE_PRICE as Unit_Price,
		line.line_units*line.line_price as SubTotal
from Customer join Invoice on customer.cus_code = invoice.cus_code
join line on invoice.inv_number = line.inv_number
join product on product.p_code = line.p_code
order by customer.cus_code, invoice.INV_NUMBER, product.P_DESCRIPT;