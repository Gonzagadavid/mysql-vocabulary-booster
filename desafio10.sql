SELECT 
    p.ProductName AS 'Produto',
    MIN(od.quantity) AS 'Mínima',
    MAX(od.quantity) AS 'Máxima',
    ROUND(AVG(od.quantity), 2) AS 'Média'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON od.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING AVG(od.Quantity) > 20
ORDER BY AVG(od.quantity) , p.ProductName;
