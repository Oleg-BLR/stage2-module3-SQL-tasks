SELECT * FROM mark WHERE mark > 7 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM paymenttype ORDER BY name ASC;
SELECT * FROM student ORDER BY name DESC;
SELECT DISTINCT student.name, student.birthday, payment.amount FROM payment JOIN student ON payment.student_id = student.id ORDER BY birthday ASC;

