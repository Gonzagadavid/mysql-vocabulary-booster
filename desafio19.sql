USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(_mes INT, _ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtde INT;
SELECT 
    COUNT(HIRE_DATE)
FROM
    hr.employees
WHERE
    HIRE_DATE like concat(_ano, '-', if (_mes < 10, concat(0, _mes), _mes), '%') into qtde;
  RETURN qtde;
END $$

DELIMITER ;

SELECT EXIBIR_QUANTIDADE_PESSOAS_CONTRATADAS_POR_MES_E_ANO(6, 1987);
