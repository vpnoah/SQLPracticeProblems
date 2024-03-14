Select Format(min(cus_balance),2) as "Minimum Balance", Format(max(cus_balance),2) as "Max Balance",
		Format(avg(cus_balance),2) as "Average Balance"
from(
	Select Distinct(Customer.cus_code), customer.cus_balance
	from Customer join invoice where invoice.cus_code = customer.cus_code) as cus2
