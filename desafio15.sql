USE hr;
DELIMITER //

CREATE PROCEDURE buscar_media_por_cargo(IN _cargo VARCHAR(50))
BEGIN
  SELECT 
    ROUND(AVG(e.SALARY), 2) as 'Média salarial'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON j.JOB_ID = e.JOB_ID
WHERE
    j.JOB_TITLE = _cargo;
END //

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
