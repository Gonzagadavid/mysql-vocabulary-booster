SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            customers
        WHERE
            c.country = country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
WHERE
    (SELECT 
            COUNT(*)
        FROM
            customers
        WHERE
            c.country = country) - 1 > 0
ORDER BY c.ContactName;
