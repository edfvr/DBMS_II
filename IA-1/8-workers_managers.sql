SELECT  * 
FROM Worker, 
	Title 
WHERE Worker.WORKER_ID = Title.WORKER_REF_ID
	AND Title.WORKER_TITLE = 'Manager';