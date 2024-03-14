Select Distinct(Customer.cus_code), customer.cus_balance
from Customer join invoice where invoice.cus_code = customer.cus_code;

