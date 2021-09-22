SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    w3schools.products
WHERE
    ProductID IN (SELECT 
            ProductID
        FROM
            w3schools.order_details
        WHERE
            Quantity > 80)
ORDER BY ProductName;
