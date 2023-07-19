use team9;

SHOW TABLES;

-- 1) This query provides details of Members at the cummunity centre
SELECT * FROM members ORDER BY first_name;

-- 2) This query provides information of members who attended various class activities in the month of October 2022
SELECT m.member_id, m.first_name, m.last_name, c.description, a.attendance_status, a.date, c.member_cost
FROM members AS m
INNER JOIN activity_bookings AS ab 
ON m.member_id = ab.member_id
INNER JOIN attendance as a
ON a.activity_booking_id = ab.activity_booking_id
INNER JOIN class_activities as c
ON c.class_id = ab.class_id
WHERE attendance_status = 'yes' AND a.date BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY c.description;
 
 -- 3) This query provides information of members who attended Karate class from October to November
SELECT m.member_id, m.first_name, m.last_name, c.description, a.attendance_status, a.date
FROM members AS m
INNER JOIN activity_bookings AS ab 
ON m.member_id = ab.member_id
INNER JOIN attendance as a
ON a.activity_booking_id = ab.activity_booking_id
INNER JOIN class_activities as c
ON c.class_id = ab.class_id
WHERE attendance_status = 'yes' AND c.description = 'Karate class'
ORDER BY c.description; 

-- 4) This query Provides details of members who attended various class activites and the room the activities took place in
SELECT DISTINCT(m.first_name), m.last_name, c.description, r.name AS Room_name, a.attendance_status, a.date
FROM members AS m
INNER JOIN activity_bookings AS ab 
ON m.member_id = ab.member_id
INNER JOIN attendance as a
ON ab.activity_booking_id = a. activity_booking_id
INNER JOIN class_activities AS c
ON c.class_id = ab.class_id
INNER JOIN room_booking AS rb
ON rb.class_id = c.class_id
INNER JOIN room as r 
ON r.room_id = rb.room_id
WHERE a.attendance_status = 'yes'
ORDER BY c.description;

-- 5) This query Provides details of members who attended 'Basketball', 'Gym class', 'Baking class' and the room the activities took place in
SELECT DISTINCT(m.first_name), m.last_name, c.description, r.name AS Room_name, a.attendance_status, a.date, c.member_cost
FROM members AS m
INNER JOIN activity_bookings AS ab 
ON m.member_id = ab.member_id
INNER JOIN attendance as a
ON ab.activity_booking_id = a. activity_booking_id
INNER JOIN class_activities AS c
ON c.class_id = ab.class_id
INNER JOIN room_booking AS rb
ON rb.class_id = c.class_id
INNER JOIN room as r 
ON r.room_id = rb.room_id
WHERE a.attendance_status = 'yes' AND c.description IN ('Basketball', 'Gym class', 'Baking class')
ORDER BY c.description;
 
 -- 6) This query provides details of members that booked places for activities online
SELECT m.first_name, m.last_name, c.description, ab.date, ab.mode_of_booking
FROM members as m
INNER JOIN activity_bookings as ab 
ON m.member_id = ab.member_id
INNER JOIN class_activities as c
ON c.class_id = ab.class_id
Where mode_of_booking = 'online'
ORDER BY c.description, ab.date;

-- 7) This query provides details of members that booked places for activities in_person
SELECT m.first_name, m.last_name, c.description, ab.date, ab.mode_of_booking
FROM members as m
INNER JOIN activity_bookings as ab 
ON m.member_id = ab.member_id
INNER JOIN class_activities as c
ON c.class_id = ab.class_id
Where mode_of_booking = 'in_person'
ORDER BY c.description, ab.date;
 
-- 8) This query provides the List of activites and how much an activity cost for Members
SELECT class_id, description, member_cost, duration
FROM class_activities ORDER BY member_cost;

-- 9) This query provides the List of activites and how much an activity cost for guests
SELECT class_id, description, guest_cost, duration
FROM class_activities ORDER BY guest_cost;

-- 10) This query provides details of members and what class they take
SELECT m.first_name, m.last_name, c.description, c.member_cost
FROM members as m
INNER JOIN membership_of_class as mc
ON m.member_id = mc.member_id
INNER JOIN class_activities as c
ON c.class_id = mc.class_id;

-- 11) This query provides details of Room Bookings of Various Activities
SELECT c.description, r.name, rb.booking_date
FROM class_activities as c
INNER JOIN room_booking as rb
ON c.class_id = rb.class_id
INNER JOIN room as r 
ON r.room_id = rb.room_id
ORDER BY rb.booking_date;

-- 12) This query provides details of Room Bookings for Various Activities in the month of October
SELECT c.description, r.name, rb.booking_date
FROM class_activities as c
INNER JOIN room_booking as rb
ON c.class_id = rb.class_id
INNER JOIN room as r 
ON r.room_id = rb.room_id 
WHERE rb.booking_date BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY rb.booking_date;

-- 13) This query provides details of room bookings for class activities from the 1st of October 2022 to the 31st of October 2022 and the instructor who took the class
SELECT i.first_name, i.last_name, c.description, r.name, rb.booking_date
FROM instructor AS i
INNER JOIN class_activities AS c
ON i.instructor_id = c.instructor_id
INNER JOIN room_booking AS rb
ON C.class_id = rb.class_id
INNER JOIN room as r 
ON r.room_id = rb.room_id
WHERE rb.booking_date BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY c.description;
