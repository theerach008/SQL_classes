SELECT t1.name, t2.coursename 
FROM STUDENTTABLE t1 
INNER JOIN STUDENTCOURSENEW t2 
ON t1.roll_no = t2.roll_no;

SELECT t2.coursename, COUNT(t1.name) 
FROM STUDENTTABLE t1 
INNER JOIN STUDENTCOURSENEW t2 
ON t1.roll_no = t2.roll_no 
GROUP BY t2.coursename;
