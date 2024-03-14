
select sum(NumInvoices) as "Number of Invoices", Format(sum(TotalPurchase),2) as "Total Sales",
	Format(min(TotalPurchase),2) as "Smallest Purchase", Format(max(TotalPurchase),2) as "Greatest Purchase",
    Format(avg(TotalPurchase),2) as "Average Purchase"
from(
	select cus_code, count(distinct(inv_number)) as "NumInvoices", sum(Line_units*line_price) as "TotalPurchase"
	from invoice join line using (inv_number)
	GROUP BY cus_code
	order by cus_code) as CusTotals;
