SELECT MAX(birthday) FROM student;
SELECT MIN(payment_date) FROM payment;

SELECT AVG(mark) FROM mark WHERE subject_id = (select id from subject WHERE name = 'Math') ;
--8.3.2
--SELECT avg(m.mark) FROM mark AS m JOIN subject AS s ON m.subject_id = s.id WHERE s.name = 'Math';
--tryes
--SELECT subject_id, AVG(mark) FROM mark GROUP BY subject_id = (select subject_id from subject WHERE name = 'Math') ;
--SELECT subject_id, AVG(mark) FROM mark WHERE subject_id = (select subject_id from subject WHERE name = 'Math') ;
SELECT MIN(amount) FROM payment WHERE type_id = (select id from paymenttype WHERE name = 'WEEKLY');


--for H2
--select id from subject WHERE name = 'Math';
--SELECT AVG(mark) FROM mark GROUP BY subject_id  WHERE subject_id = (select id from subject WHERE name = 'Math');
--SELECT AVG(mark), subject_id FROM mark GROUP BY subject_id;
--SELECT AVG(mark), subject_id FROM mark GROUP BY subject_id ORDER BY AVG(mark) DESC ;
--SELECT MIN(amount), PAYMENT_DATE FROM payment GROUP BY PAYMENT_DATE;
--SELECT MIN(amount) FROM payment WHERE type_id = (select id from paymenttype WHERE name = 'WEEKLY');
--
--select id from subject WHERE name = 'Math';
--SELECT AVG(mark) FROM mark WHERE subject_id = 104;
--SELECT AVG(mark) FROM mark WHERE subject_id = (select id from subject WHERE name = 'Math') ;
--SELECT avg(m.mark) FROM mark AS m JOIN subject AS s ON m.subject_id = s.id WHERE s.name = 'Math';
--SELECT AVG(mark) FROM Mark where subject_id = (select id from subject where name='Math');
--
--SELECT AVG(mark) FROM mark WHERE subject_id = (select subject_id from subject WHERE name = 'Math') ;
--select subject_id from subject WHERE name = 'Math'