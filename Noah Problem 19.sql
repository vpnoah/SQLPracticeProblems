Select format(sum(customer.CUS_BALANCE),2) as "Totao Balance",
		format(min(customer.cus_balance),2) as "Minimum Balance",
        format(max(customer.cus_balance),2) as "Max Balance",
        format(avg(customer.cus_balance),2) as "Average Balance"
from customer 
where 
	(customer.CUS_CODE NOT In (Select cus_code from invoice))
order by cus_code;