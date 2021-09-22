USE hr;

DELIMITER //

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN _email VARCHAR(100))
BEGIN

SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    d.DEPARTMENT_NAME AS 'Departamento',
    j.JOB_TITLE AS 'Cargo'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
        INNER JOIN
    departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
WHERE
    e.EMAIL = _email
ORDER BY d.DEPARTMENT_NAME , j.JOB_TITLE;

END //

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
