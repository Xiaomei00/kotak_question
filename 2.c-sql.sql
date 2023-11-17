SELECT
	c.id,
	c.name	
FROM dbo.customers as c
LEFT JOIN dbo.invoices as i
	ON c.id = i.customer_id
LEFT JOIN dbo.invoice_lines as j 
	ON i.id = j.invoice_id
WHERE j.quantity IS NULL


