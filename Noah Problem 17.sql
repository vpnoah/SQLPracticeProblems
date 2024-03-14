Select format(sum(cus_balance),2) as "Total Balance", 
		format(min(cus_balance),2) as "Minimum Balance",
        format(max(cus_balance),2) as "Maximum Balance",
        format(avg(cus_balance),2) as "Average Balance"
from Customer;