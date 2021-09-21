SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
        INNER JOIN
    hr.departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , j.JOB_TITLE;
