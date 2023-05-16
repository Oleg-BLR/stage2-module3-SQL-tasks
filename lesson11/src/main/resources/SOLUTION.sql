
UPDATE subject SET grade = 5 WHERE name = 'End of Suburbia: Oil Depletion and the Collapse of the American Dream';

--SELECT * FROM student WHERE name = 'Tremaine Worvill';
UPDATE student SET groupnumber = 8 WHERE name = 'Tremaine Worvill';
--SELECT * FROM student WHERE name = 'Tremaine Worvill';

--SELECT * FROM payment WHERE payment_date > '2021-01-01' AND type_id = 2;
UPDATE payment SET amount = 500, student_id = 2 WHERE payment_date > '2021-01-01' AND type_id = 2;
--11.3.2
--UPDATE PAYMENT SET amount = 500, student_id = 2 WHERE CAST(payment_date as DATE) > '2021-01-01' AND type_id = 2;
--SELECT * FROM payment WHERE payment_date > '2021-01-01' AND type_id = 2;

--SELECT * FROM mark WHERE subject_id = 315;
UPDATE mark SET mark = 2 WHERE subject_id = 315;
--SELECT * FROM mark WHERE subject_id = 315;

