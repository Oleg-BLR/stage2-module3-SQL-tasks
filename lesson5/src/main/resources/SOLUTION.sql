SELECT * FROM payment WHERE amount >=500;
SELECT * FROM Student WHERE DATEDIFF(YEAR, birthday, CURRENT_DATE)>20;
SELECT * FROM Student WHERE name='Mike' OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE DATEDIFF(MONTH, payment_date, CURRENT_DATE)<8;
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE (name LIkE 'Roxi%' AND groupnumber=4) OR (name LIKE 'Tallie%' AND groupnumber=9);
