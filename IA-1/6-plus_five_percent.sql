SELECT FIRST_NAME,
	LAST_NAME, 
        	SALARY + ( SALARY * 0.05 ), 
        	DEPARTMENT 
FROM Worker 
ORDER BY SALARY ASC LIMIT 3;