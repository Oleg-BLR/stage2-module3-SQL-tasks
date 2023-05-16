SELECT AVG(mark), subject.name,  mark.subject_id FROM subject JOIN mark ON subject.id = mark.subject_id GROUP BY subject.id HAVING AVG(mark) > (SELECT AVG(mark) FROM mark);
--10.1.2
--SELECT AVG(mark), mark.subject_id, subject.name FROM mark JOIN subject ON mark.subject_id = subject.id GROUP BY subject_id HAVING AVG(mark) > (SELECT AVG(mark) FROM mark);
--10.1.3
--SELECT s.id, s.name, s.description, s.grade FROM Subject as s
--    INNER JOIN Mark as m
--    ON s.id = m.subject_id
--    GROUP BY s.id
--    HAVING AVG(m.mark) > (SELECT AVG(mark) FROM Mark);
--10.1.4
--SELECT s.id, s.name, s.description, s.grade FROM subject AS s JOIN mark AS m ON s.id = m.subject_id GROUP BY (s.id) HAVING  avg(m.mark) > (SELECT avg(mark) FROM mark);

SELECT AVG(amount), student_id, student.name, student.birthday, student.groupnumber  FROM payment JOIN student ON payment. student_id = student.id GROUP BY payment.student_id HAVING AVG(amount) < (SELECT AVG(amount) FROM payment);
--10.2.2
--SELECT s.id, s.name, s.birthday, s.groupnumber FROM Student as s
--    INNER JOIN Payment as p
--    ON s.id = p.student_id
--    GROUP BY s.id
--    HAVING AVG(p.amount) < (SELECT AVG(amount) FROM payment);
--10.2.3
--SELECT s.id, s.name FROM student AS s JOIN payment AS p ON s.id = p.student_id GROUP BY (s.id) HAVING avg(p.amount)  < (SELECT avg(amount) FROM payment);



