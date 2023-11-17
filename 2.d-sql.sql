SELECT
	c.name as Book_user,
	j.description as list_of_books	
FROM dbo.customers as c
INNER JOIN dbo.invoices as i
	ON c.id = i.customer_id
INNER JOIN dbo.invoice_lines as j 
	ON i.id = j.invoice_id