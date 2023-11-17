SELECT COUNT(*) as number_of_customer
FROM(SELECT 
	COUNT(c.name) as  name_buyer
FROM dbo.customers as c
INNER JOIN dbo.invoices as i
	ON c.id = i.customer_id
INNER JOIN dbo.invoice_lines as j 
	ON i.id = j.invoice_id 
GROUP BY c.name
HAVING SUM(j.quantity) > 5)
 AS sub;
