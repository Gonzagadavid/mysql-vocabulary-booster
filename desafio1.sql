SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = (SELECT 
                REGION_ID
            FROM
                hr.regions
            WHERE
                REGION_NAME = 'Europe'),
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries ORDER BY COUNTRY_NAME;
