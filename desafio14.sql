SELECT DISTINCT
    country AS País
FROM
    w3schools.customers 
UNION ALL SELECT DISTINCT
    country AS País
FROM
    w3schools.suppliers
WHERE
    country NOT IN (SELECT DISTINCT
            country AS País
        FROM
            w3schools.customers)
ORDER BY País
LIMIT 5;
