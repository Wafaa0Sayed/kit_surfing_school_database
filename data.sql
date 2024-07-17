-- insert
 -- Inserting values into 'staff'
INSERT INTO staff (staff_id, firstname, lastname, position, phone, city, salary, hire_date, maneger_id) VALUES
(13, 'ahmed', 'mohha', 'photographer', '01000000449', 'El Gouna', 10500.0000, '2023-02-20', 1),
(11, 'ahmed', 'gommaa', 'photographer', '01000000859', 'El Gouna', 10500.0000, '2023-02-20', 1),
(12, 'ahmed', 'belal', 'coach', '01000000560', 'El Gouna', 9000.0000, '2023-01-20', 1),
(1, 'Youssef', 'Ahmed', 'Manager', '01000000001', 'El Gouna', 12000.0000, '2023-01-10', NULL),
(2, 'Fatma', 'Mohamed', 'Assistant Manager', '01000000002', 'El Gouna', 10000.0000, '2023-01-15', 1),
(3, 'Ali', 'Houssam', 'paddel_man', '01000000003', 'El Gouna', 9000.0000, '2023-01-20', 1),
(4, 'Mai', 'Sayed', 'Receptionist', '01000000004', 'El Gouna', 8000.0000, '2023-01-25', 1),
(5, 'Khaled', 'Ibrahim', 'rent_man', '01000000005', 'El Gouna', 7000.0000, '2023-02-01', 1),
(6, 'Nadia', 'Ali', 'massage', '01000000006', 'El Gouna', 8500.0000, '2023-02-05', 1),
(7, 'Hossam', 'Abdelaziz', 'rent_man', '01000000007', 'El Gouna', 9500.0000, '2023-02-10', 2),
(8, 'Amina', 'Khaled', 'cheaf', '01000000008', 'El Gouna', 11000.0000, '2023-02-15', 2),
(9, 'Tarek', 'Mahmoud', 'Receptionist', '01000000009', 'El Gouna', 10500.0000, '2023-02-20', 2),
(10, 'ahmed', 'Houssam', 'bar_man', '01000000010', 'El Gouna', 9000.0000, '2023-01-20', 1)
--------------------------------------------------------------------------------------------------
INSERT INTO instructors (ins_id, name, experience, age, salary, lang) VALUES
(1, 'Ahmed Ali', '5 years', 25, 3000, 'Arabic'),
(2, 'Mohamed Hassan', '3 years', 23, 2800, 'Arabic'),
(3, 'Sara Amr', '7 years', 30, 3500, 'Arabic'),
(4, 'Laila Essam', '4 years', 26, 2900, 'Arabic'),
(5, 'Amir Fathi', '6 years', 31, 3200, 'Arabic'),
(6, 'Hala Rashed', '2 years', 22, 2700, 'Arabic'),
(7, 'Omar Tarek', '8 years', 33, 3600, 'Arabic'),
(8, 'Noura Samy', '1 year', 21, 2600, 'Arabic'),
(9, 'Tamer Hosny', '10 years', 35, 3800, 'Arabic');
-----------------------------------------------------
-- Inserting values into 'equipment'
INSERT INTO equipment (eq_code, type, brand, price, model, condition, size) VALUES
('EQ055', 'Board', 'Duotone', 800, 'Gambler', 'Used', '147'),
('EQ044', 'Board', 'Duotone', 800, 'Gambler', 'Used', '145'),
('EQ033', 'Board', 'Duotone', 800, 'Gambler', 'Used', '150'),
('EQ010', 'Kite', 'North', 1100, 'Orbit', 'New', '22'),
('EQ011', 'Kite', 'North', 1100, 'Orbit', 'New', '12'),
('EQ012', 'Kite', 'North', 1100, 'Orbit', 'New', '26'),
('EQ01', 'Kite', 'Cabrinha', 1200, 'Switchblade', 'New', '157'),
('EQ02', 'Board', 'Duotone', 800, 'Gambler', 'Used', '142'),
('EQ03', 'Harness', 'Mystic', 250, 'Warrior', 'New', 'M'),
('EQ04', 'Kite', 'North', 1100, 'Orbit', 'New', '20'),
('EQ05', 'Board', 'F-One', 750, 'Trax', 'Used', '145'),
('EQ06', 'Harness', 'Ion', 240, 'Apex', 'New', 'L'),
('EQ07', 'Kite', 'Slingshot', 1150, 'RPM', 'New', 'm'),
('EQ08', 'Board', 'Liquid Force', 700, 'Benchmark', 'Used', '122'),
('EQ09', 'Harness', 'Dakine', 230, 'C1', 'New', 'xS');
------------------------------------------------------------------------
-- Inserting values into 'courses'
INSERT INTO courses (course_id, level, type, hours, price) VALUES
(1, 1, 'Beginner', 10, 100),
(2, 2, 'Intermediate', 15, 150),
(3, 3, 'Advanced', 20, 200),
(4, 1, 'Beginner', 10, 100),
(5, 2, 'Intermediate', 15, 150),
(6, 3, 'Advanced', 20, 200),
(7, 1, 'Beginner', 10, 100),
(8, 2, 'Intermediate', 15, 150),
(9, 3, 'Advanced', 20, 200);
----------------------------------
-- Inserting values into 'lessons'
INSERT INTO lessons (lesson_id, course_id, duration, datee) VALUES
(10, 1, 2, '2024-05-15'),
(20, 2, 3, '2024-05-16'),
(30, 1, 1, '2024-05-17'),
(40, 2, 2, '2024-05-18'),
(50, 5, 3, '2024-05-19'),
(60, 5, 2, '2024-05-20'),
(70, 5, 2, '2024-05-21'),
(80, 5, 3, '2024-05-22'),
(90, 9, 2, '2024-05-23'),
(100, 9, 3, '2024-05-22'),
(110, 9, 2, '2024-05-23');
---------------------------------------
-- Inserting values into 'teach'
INSERT INTO teach (ins_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(9, 5),
(3, 6),
(9, 7),
(8, 8),
(6, 5),
(7, 5),
(6, 3),
(9, 4),
(9, 8);
----------------------------------------------------------
-- Inserting values into 'customers'
INSERT INTO customers (customer_id, name, age, country, phone) VALUES
(18, 'leo', 25, 'french', '000-555-995'),
(17, 'markos', 28, 'germeny', '555-66-959'),
(16, 'karlo', 25, 'itelain', '000-555-599'),
(15, 'ronaldo', 39, 'portugaise', '01234567898'),
(11, 'clouda Doe', 25, 'french', '000-555-999'),
(12, 'didi Smith', 28, 'germeny', '555-66-999'),
(13, 'ahmo Doe', 25, 'itelain', '000-555-999'),
(14, 'Jane koo', 28, 'poland', '555-66-999'),
(1, 'John Doe', 25, 'USA', '000-555-999'),
(2, 'Jane Smith', 28, 'UK', '555-66-999'),
(3, 'Ahmed Hassan', 30, 'Egypt', '01234567892'),
(4, 'Sara Ali', 22, 'Egypt', '01234567893'),
(5, 'Mike Johnson', 35, 'USA', '01234567894'),
(6, 'Olivia Brown', 29, 'Australia', '01234567895'),
(7, 'Mohamed Salah', 27, 'Egypt', '01234567896'),
(8, 'Amira Elsayed', 24, 'Egypt', '01234567897'),
(9, 'Liam Neeson', 31, 'Ireland', '01234567898');

--------------------------------------------------
INSERT INTO enrollcourse (customer_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(11,8),
(13,6),
(14,4);
---------------------------------------
-- Inserting values into 'instructor_lang'
INSERT INTO instructor_lang (ins_id, lang) VALUES
(1,'portugaise'),
(6,'English'),
(5,'English'),
(4,'poland'),
(1, 'English'),
(7, 'English'),
(7, 'Spanish'),
(8 ,'French'),
(9, 'German'),
(6, 'Italian'),
(7, 'Russian'),
(8, 'Chinese'),
(9, 'Japanese');
-------------------------------------------
INSERT INTO cust_equi (customer_id, eq_code, hours, price) VALUES
(16, 'EQ07', 12, 270),
(17, 'EQ02', 3, 270),
(18, 'EQ08',12, 270),
(17, 'EQ04', 24, 270),
(3, 'EQ01', 24, 270),
(9, 'EQ05', 24, 270),
(3, 'EQ03', 24, 270),
(6, 'EQ06', 24, 260),
(9, 'EQ09', 24, 280);
DELETE FROM cust_equi WHERE customer_id  BETWEEN 1 AND 9;

--------------------------------
-- Inserting additional services into 'services'
INSERT INTO services (service_id, type, price, duration, staff_id) VALUES
(10, 'Massage', 50, '1 hour', 6),
(11, 'Photography', 100, '2 hours', 11),
(12, 'Gym Access', 20, '1 day', 12),
(20, 'Volleyball', 30, '2 hours', 13),
(14, 'Paddle Rental', 25, '1 hour', 3), -- Based on typical paddle rental services[^1^][4]
(15, 'Food Service', 15, 'Per meal', 8), -- General entry for food services[^2^][1]
(16, 'Drinks Service', 8, 'Per drink', 10), -- General entry for drinks services[^2^][1]
(17, 'Paddle Tour', 85, '2 hours', 3), -- Based on guided paddle tours[^1^][4]
(18, 'Snack Bar', 10, 'Per item', 9); -- General entry for snack bar services
--------------------------------------------------------------------------------

-- Inserting values into 'mentor'
INSERT INTO mentor (customer_id, ins_id) VALUES
(9,4),
(1, 5),
(14, 4),
(11, 8),
(12, 9),
(6, 7),
(5, 1),
(7, 4),
(8, 1),
(13, 6),
(4,6),
(15,1);
----------------------------------
-- Inserting values into 'services_used'
INSERT INTO services_used (customer_id, service_id) VALUES
(4, 16),
(1, 14),
(2, 20),
(9,11 ),
(15, 18),
(15, 12),
(15, 10),
(14, 11),
(14, 12);
---------------------------------------------
-- Inserting values into 'equipment_required'
INSERT INTO equipment_required (course_id, eq_code) VALUES
(1, 'EQ010'),
(2, 'EQ02'),
(3, 'EQ012'),
(4, 'EQ011'),
(5, 'EQ07'),
(6, 'EQ06'),
(7, 'EQ033'),
(8, 'EQ055'),
(9, 'EQ044');

-- update, delete 
update instructors
set name='hamdy' 
where ins_id=1 ;

update courses
set price=400 
where price=100 and level=1 ;

update instructor_lang 
set lang='korean' 
where ins_id=7 and lang='english' ;

delete from staff where staff_id=4 ;