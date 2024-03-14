Select customer.cus_code, customer.CUS_BALANCE
from customer 
where 
	(customer.CUS_CODE NOT In (Select cus_code from invoice))
order by cus_code;