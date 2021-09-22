USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(_email varchar(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtyJobs INT;
SELECT 
    COUNT(jh.EMPLOYEE_ID) AS total_empregos
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = _email INTO qtyJobs;
  RETURN qtyJobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
