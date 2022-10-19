SELECT 
	COUNT(
CASE 
WHEN GENDER = 'Male' THEN 1 
END
) AS 'Male',
	COUNT(
CASE 
WHEN GENDER = 'Female' THEN 1 
END
) AS 'Female',
	COUNT( * ) AS 'Total Gender' 
FROM Worker;