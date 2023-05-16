DELETE FROM student WHERE id IN (SELECT DISTINCT m.student_id FROM mark AS m JOIN subject AS s on s.id = m.subject_id WHERE grade >= 4);
DELETE FROM student WHERE id IN (SELECT  DISTINCT s.id FROM student AS s JOIN mark AS m ON s.id = m.student_id WHERE m.mark < 4);
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;



--SELECT * FROM student WHERE id = 1;
--SELECT * FROM mark WHERE student_id = 1;
--SELECT * FROM payment WHERE student_id = 1;
--
--DELETE FROM student WHERE id = 1;
--
--
--
--DELETE FROM student WHERE id IN (SELECT DISTINCT mark JOIN subject ON mark. = column-name4 WHERE condition
--DELETE FROM student WHERE id IN (SELECT DISTINCT mark JOIN subject ON ma = column-name4 WHERE condition
--
--SELECT DISTINCT mark.student_id FROM mark JOIN student ON student.id = mark.student_id;
--SELECT DISTINCT student.id FROM student JOIN mark ON student.id = mark.student_id;
--SELECT DISTINCT student.id FROM student JOIN mark ON student.id = mark.student_id JOIN payment ON student.id = payment.student_id;
--SELECT DISTINCT student.id, mark.student_id, payment.student_id FROM student JOIN mark ON student.id = mark.student_id JOIN payment ON student.id = payment.student_id;
--
--
--SELECT DISTINCT student.id, mark.student_id, payment.student_id FROM student JOIN mark ON student.id = mark.student_id JOIN payment ON student.id = payment.student_id;
--DELETE FROM student WHERE id IN (SELECT DISTINCT student.id FROM student JOIN mark ON student.id = mark.student_id JOIN payment ON student.id = payment.student_id);
--
--WHERE grade >= 4;
--DELETE FROM student WHERE id IN (SELECT DISTINCT mark.student_id FROM mark JOIN student ON student.id = mark.student_id WHERE grade >= 4);
--DELETE FROM student WHERE id IN (SELECT DISTINCT mark JOIN subject ON ma = column-name4 WHERE condition