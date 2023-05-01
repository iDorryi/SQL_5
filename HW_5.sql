SELECT * FROM myfirstdb.Cars; 
CREATE VIEW COUNT_COST AS
SELECT Name, Cost
FROM Cars
WHERE Cost  < 25000;


SELECT * FROM COUNT_COST;

SELECT * FROM myfirstdb.Cars; 
ALTER VIEW COUNT_COST AS
SELECT Name, Cost
FROM Cars
WHERE Cost  < 30000;


SELECT * FROM COUNT_COST;

SELECT * FROM myfirstdb.Cars; 
CREATE VIEW UNIQUE_AMOUNT_COST AS
SELECT Id, Name, Cost
FROM Cars
WHERE Name = "Skoda" OR Name = "Audi" ;
SELECT * FROM UNIQUE_AMOUNT_COST;

SELECT an_name, an_price, ord_datetime
FROM Analysis
JOIN Orders_an 
ON Analysis.an_id = Orders_an.ord_an
WHERE ord_datetime BETWEEN "2020-02-20" AND "2020-02-27"

CREATE TABLE Train(
	train_id INT,
    station  VARCHAR(20),
	station_time TIME
);
INSERT INTO Train(train_id, station, station_time)
VALUES
(110, 'San Francisco', '10:00:00'),
(110, 'Redwood City', '10:54:00'),
(110, 'Palo Alto', '11:02:00'),
(110, 'San Jose', '12:35:00'),
(120, 'San Francisco', '11:00:00'),
(120, 'Palo Alto', '12:49:00'),
(120, 'San Jose',  '13:30:00');
SELECT * FROM Train;
SELECT *,
SUBTIME(LEAD(station_time, 1) OVER(PARTITION BY train_id ORDER BY train_id), station_time)
AS 'time to next station'
FROM Train;

