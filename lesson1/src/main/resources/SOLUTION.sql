create table Student(id bigint primary key, name varchar(255), birthday date, "group" int);
create table Subject(id bigint primary key, name varchar(255), description varchar(255), grade int);
create table PaymentType(id bigint primary key, name varchar(255));
create table Payment(id bigint primary key, type_id bigint references PaymentType(id), amount decimal, student_id bigint references Student(id), payment_date datetime);
create table Mark(id bigint primary key, student_id bigint references Student(id), subject_id bigint references Subject(id), mark int


--CREATE TABLE Student
--(
--     id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `name` VARCHAR NOT NULL,
--     birthday DATE,
--    `group` INT NOT NULL
--);
--
--CREATE TABLE Subject (
--    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `name` VARCHAR NOT NULL,
--    description VARCHAR,
--    `grade` INTEGER NOT NULL
--);
--
--CREATE TABLE PaymentType(
--    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    name VARCHAR NOT NULL
--);
--
--CREATE TABLE Payment (
--    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    type_id BIGINT NOT NULL ,
--    amount DECIMAL,
--    student_id BIGINT NOT NULL,
--    payment_date DATETIME,
--    FOREIGN KEY (type_id) REFERENCES PaymentType(id),
--    FOREIGN KEY (student_id) REFERENCES Student(id)
--);
--
--CREATE TABLE Mark (
--    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    student_id BIGINT NOT NULL,
--    subject_id BIGINT NOT NULL,
--    mark INT NOT NULL,
--    FOREIGN KEY (student_id) REFERENCES Student(id),
--    FOREIGN KEY (subject_id) REFERENCES Subject(id)
--);