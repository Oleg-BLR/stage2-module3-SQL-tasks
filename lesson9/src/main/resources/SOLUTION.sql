SELECT AVG(mark), student.name FROM mark JOIN student ON mark.student_id = student.id GROUP BY student_id HAVING AVG(mark)>8;
--9.1.2
--SELECT s.id, s.name, s.birthday, s.groupnumber FROM Student as s INNER JOIN Mark as m ON s.id = m.student_id GROUP BY m.student_id HAVING AVG(m.mark) > 8;
--9.1.3
--SELECT s.id, s.name FROM student AS s JOIN mark as m ON s.id = m.student_id GROUP BY (s.id, s.name) HAVING avg(m.mark) > 8;
SELECT MIN(mark), student.id, student.name FROM mark JOIN student ON mark.student_id = student.id GROUP BY student_id HAVING MIN(mark)>7;
--9.2.2
--SELECT s.id, s.name FROM Student as s INNER JOIN Mark as m ON s.id = m.student_id GROUP BY m.student_id HAVING MIN(m.mark) > 7;
--9.2.3
--SELECT s.id, s.name FROM student AS s JOIN mark as m ON s.id = m.student_id GROUP BY (s.id, s.name) HAVING min(m.mark) > 7;
SELECT COUNT(payment.id), student.id, student.name FROM student JOIN payment ON student.id = payment.student_id WHERE EXTRACT(YEAR FROM payment.payment_date) = 2019 GROUP BY payment.student_id HAVING COUNT(payment.id)>2;
--9.3.2
--select id, name from student where id in (select student_id from payment where payment_date >= '2019-01-01 00:00:00' AND payment_date <= '2019-12-31 23:59:59' GROUP BY student_id HAVING  COUNT(student_id) > 2);
--9.3.3
--SELECT s.id, s.name FROM student AS s JOIN payment as p ON s.id = p.student_id WHERE EXTRACT(YEAR FROM p.payment_date) = 2019 GROUP BY (s.id, s.name) HAVING COUNT(*) > 2;