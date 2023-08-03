-- Giovanni De Franceschi TP003

/*
Aggregate Queries

REQUIREMENT - Use a multi-line comment to paste the first 5 or fewer results under your query
		     THEN records returned. 
*/

USE orderbook_activity_db;

-- #1: How many users do we have?
SELECT COUNT(userId) AS `Number of users` FROM User;

/*
7
ROWS = 1
*/

-- #2: List the username, userid, and number of orders each user has placed.
SELECT u.uname, u.userId, COUNT(o.orderid) AS number_orders FROM `User` AS u
JOIN `Order` AS o
ON o.userId = u.userId
GROUP BY u.uname, u.userId;

/*
admin	1	3
alice	5	8
james	3	3
kendra	4	5
robert	6	5
ROWS = 5;
*/


-- #3: List the username, symbol, and number of orders placed for each user and for each symbol. (????)
-- Sort results in alphabetical order by symbol.

SELECT u.uname, o.symbol, COUNT(*) AS `Order_Count`
FROM `Order` AS o
JOIN `User` AS u ON o.userId = u.userId
GROUP BY u.uname, o.symbol
ORDER BY o.symbol ASC;

/*
TO BE VERIFIED ?????????

alice	A		5
james	A		1
robert	AAA		1
admin	AAPL	1
robert	AAPL	1
ROWS = 19
*/

-- #4: Perform the same query as the one above, but only include admin users.
SELECT u.uname, o.symbol, COUNT(*) AS `Order_Count`, COUNT(o.symbol)
FROM `Order` AS o
JOIN `User` AS u ON o.userId = u.userId
JOIN `UserRoles` AS ur
ON u.userid = ur.userid
JOIN `Role` AS r
ON ur.roleId = r.roleId
WHERE r.name = 'admin'
GROUP BY u.uname, o.symbol
ORDER BY o.symbol ASC;

/*
alice	A		5	5
admin	AAPL	1	1
alice	GOOG	1	1
admin	GS		1	1
alice	SPY		1	1
ROWS =7
*/


-- #5: List the username and the average absolute net order amount for each user with an order.
-- Round the result to the nearest hundredth and use an alias (averageTradePrice).
-- Sort the results by averageTradePrice with the largest value at the top.
SELECT u.uname AS username, ROUND(AVG(ABS(o.price * o.shares)),2) AS average_net_order
FROM User AS u
JOIN `Order` AS o
ON u.userId = o.userId
WHERE o.orderId IS NOT NULL
GROUP BY u.uname
ORDER BY average_net_order DESC;
/*
kendra	17109.53
admin	12182.47
robert	10417.84
alice	6280.26
james	2053.73
ROWS = 5
*/


-- #6: How many shares for each symbol does each user have?
-- Display the username and symbol with number of shares.

SELECT u.uname, o.symbol, SUM(o.shares) AS number_shares
FROM `User` AS u
JOIN `Order` AS o
ON o.userId = u.userId
RIGHT JOIN `Fill` AS f
ON f.userId = o.userId
GROUP BY u.uname, o.symbol;
/*
admin	WLY	    300
admin	GS	    300
admin	AAPL	-45
james	A	    -20
james	TLT	     20
ROWS = 19
*/


-- #7: What symbols have at least 3 orders?
SELECT  COUNT(o.symbol) AS order_count, o.symbol
FROM `Order` AS o
GROUP BY o.symbol
HAVING order_count >= 3;

/*
3	AAPL
3	WLY
6	A
ROWS = 3
*/


-- #8: List all the symbols and absolute net fills that have fills exceeding $100.
-- Do not include the WLY symbol in the results.
-- Sort the results by highest net with the largest value at the top.
SELECT  o.symbol, ABS(f.share * f.price) AS net_fill
FROM `Order` AS o
JOIN Fill AS f
ON o.orderId = f.orderId
GROUP BY o.symbol, f.share, f.price
HAVING NOT o.symbol = 'WLY' AND net_fill >100
ORDER BY net_fill DESC;

/*
SPY		27429.75
SPY		27429.75
GS		3056.30
GS		3056.30
AAPL	2111.40
ROWS =  12
*/


-- #9: List the top five users with the greatest amount of outstanding orders.             (????????)
-- Display the absolute amount filled, absolute amount ordered, and net outstanding.
-- Sort the results by the net outstanding amount with the largest value at the top.

/*
SELECT u.uname, o.status, o.orderId, 
FROM `User` AS u
JOIN `Order` AS o
ON u.userId = o.userId
*/

