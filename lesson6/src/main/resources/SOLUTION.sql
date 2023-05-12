SELECT * FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'MONTHLY');
SELECT * FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'Art');
SELECT id FROM payment WHERE name LIKE 'A%';
SELECT DISTINCT student.name, student.birthday, paymenttype.name FROM payment JOIN student ON payment.student_id = student.id JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name = 'WEEKLY';
--6.3.4
--SELECT DISTINCT student.id, student.name, student.birthday, paymenttype.name FROM payment
--JOIN student ON payment.student_id = student.id
--JOIN paymenttype ON payment.type_id = paymenttype.id
--GROUP BY student.id, payment.type_id HAVING payment.type_id IN (select id from paymenttype where name = 'WEEKLY');
--
--6.3.3
--SELECT DISTINCT student.name, student.birthday, paymenttype.name FROM payment
--JOIN student ON payment.student_id = student.id
--JOIN paymenttype ON payment.type_id = paymenttype.id
----GROUP BY student.name, payment.type_id HAVING payment.type_id IN (select id from paymenttype where name = 'WEEKLY');
--GROUP BY student.name, payment.type_id HAVING payment.type_id IN (select id from paymenttype);
--
--6.3.1
--SELECT DISTINCT s.id, s.name, s.birthday, s.groupnumber FROM payment AS p
--JOIN paymenttype AS t ON p.type_id = t.id
--JOIN student AS s ON p.student_id = s.id WHERE t.name = 'WEEKLY';
--
--6.3.2
--select s.id, s.name, s.birthday, s.groupnumber from student as s
--    INNER JOIN payment as p ON s.id = p.student_id
--    GROUP BY s.id, p.type_id HAVING p.type_id in (select id from paymenttype where name = 'WEEKLY');



