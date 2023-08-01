-- Giovanni De Franceschi
-- Personal trainer

-- Activity 1

SELECT * FROM Exercise;
/*
1	Squat	2
2	Deadlift	2
3	Benchpress	2
4	Curl	2
5	Swing	3
6	Squat	3
7	Shelf reach	3
8	Row	3
9	Curl	3
10	Seated Twist	3
11	Legpress	4
12	Pulldown	4
13	Triceps Pushdown	4
14	Leg Curls	4
15	Pushups	5
16	Situps	5
17	Plank	5
18	Wall sit	5
19	Lunge	5
20	Squat	5
21	Bicycle	5
22	Crunch	5
23	Bridge	5
24	Burpee	5
25	Pullups	5
26	Sprint	7
27	Distance	7
28	Trail run	7
29	Casual walk	8
30	Speed walk	8
31	Trail ride	9
32	Street ride	9
33	Treadmill	10
34	Stationary Bike	10
35	Rowing machine	10
36	Front Crawl	11
37	Breaststroke	11
38	Backstroke	11
39	Butterfly	11
40	Sidestroke	11
41	Jumping Jacks	12
42	Jumprope	12
43	Calf stretch	13
44	Hamstring stretch	13
45	Quadriceps stretch	13
46	Hip Flexor stretch	13
47	Iliotibial band (ITB) stretch	13
48	Knee-to-chest stretch	13
49	Shoulder stretch	13
50	Neck stretch	13
51	Side bend	13
52	Tadasana	15
53	Urdhva Hastansana	15
54	Uttanasana	15
55	Malasana	15
56	Lung Pose	15
57	Paschimottanasana	15
58	Janu Sirsasana	15
59	Ananda Balasana	15
60	Slam Ball	16
61	Air squats	16
62	Jumping air squats	16
63	Tire jumps	16
64	Mountain Climber	16
ROWS = 64
*/

-- Activity 2

SELECT * FROM Client;
/*
ROWS = 500
*/

-- Activity 3

SELECT * FROM `Client` WHERE city = 'Metairie';
/*
ROWS = 29
*/

-- Activity 4
SELECT * FROM Client WHERE ClientId = '818u7faf-7b4b-48a2-bf12-7a26c92de20c';
/*


ROW = 0
*/

-- Activity 5
SELECT * FROM Goal;
/*
ROWS = 17
*/

-- Activity 6
SELECT Name, LevelId FROM Workout;
/*
ROWS = 26
*/

-- Activity 7
Select Name, LevelId, Notes FROM Workout WHERE LevelId = 2;
/*
ROWS = 2
*/

-- Activity 8
Select FirstName, LastName, City FROM `Client`
WHERE CITY IN ('Matairie','Kenner','Gretna');

/*
ROWS = 48
*/

-- Activity 9
SELECT FirstName, LastName, BirthDate
FROM `Client` 
WHERE BirthDate BETWEEN '1980-01-01' AND '1989-12-31';
/*
ROWS = 72
*/

-- Activity 10
SELECT FirstName, LastName, BirthDate
FROM `Client` 
WHERE BirthDate >= '1980-01-01' AND BirthDate <= '1989-12-31';
/*
ROWS = 72
*/



-- Activity 11
SELECT * FROM Login WHERE EmailAddress LIKE '%.gov';
/*
ROWS = 17
*/


-- Activity 12
SELECT * FROM Login WHERE EmailAddress NOT LIKE '%.com';
/*
ROWS = 122
*/





-- Activity 13
Select FirstName, LastName FROM Client WHERE BirthDate IS NULL;
/* ROWS = 37
*/



-- Activity 14
SELECT Name FROM ExerciseCategory WHERE ParentCategoryId IS NOT NULL;
/*
ROWS = 12
*/



-- Activity 15
SELECT `Name`, Notes FROM Workout
WHERE LevelId = 3 AND
Notes LIKE '%you%';
/*
ROWS = 4
*/

-- Activity 16
SELECT FirstName, LastName, City FROM Client
WHERE (City ='LaPlace') AND (LastName LIKE 'L%' OR 'M%' OR 'N%');
/*
ROWS = 5
*/




-- Activity 17
SELECT InvoiceId, Description, Price, Quantity, ServiceDate, (Price * Quantity) AS LineItemTotal
FROM InvoiceLineItem
WHERE (Price * Quantity) BETWEEN 15 AND 25;
/*
invoiceid	description	price	quantity	line_item_total
1	Individual Instruction	75.0000	0.2500	18.75000000
4	Equipment	11.9700	2.0000	23.94000000
*/

-- Activity 18
SELECT * FROM Client WHERE FirstName = 'Estrella' 
AND LastName = 'Bazely';

-- Yes, Client Id is 87976c42-9226-4bc6-8b32-23a8cd7869a5

SELECT * FROM Login WHERE ClientId = '87976c42-9226-4bc6-8b32-23a8cd7869a5';

-- 87976c42-9226-4bc6-8b32-23a8cd7869a5	
-- ebazelybf@123-reg.co.uk	
-- yDNhf6Hp8X6461cxz/1n9WSxO0CA6+bKh7iXy2ov9irmQS/Pbm8rx1i0KyHudsb9BtEM4BNMXvbY5CT


-- Activity 19
SELECT WorkoutId FROM Workout WHERE Name = 'This Is Parkour';
-- 12
SELECT GoalId FROM WorkoutGoal WHERE WorkoutId = 12;
-- 3, 8, 15
SELECT Name FROM Goal WHERE GoalId = 8;
-- Muscle Bulk





