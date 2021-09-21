SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(e.SALARY), 2) < 5800.00 THEN 'Júnior'
        WHEN ROUND(AVG(e.SALARY), 2) < 7500.00 THEN 'Pleno'
        WHEN ROUND(AVG(e.SALARY), 2) < 10500.00 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_ID
ORDER BY ROUND(AVG(e.SALARY), 2) , 'Cargo';
