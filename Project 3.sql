DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
USE testdb;

CREATE TABLE IF NOT EXISTS User (
    clientID INT(4) AUTO_INCREMENT,
    phoneNumber VARCHAR(13) NOT NULL DEFAULT '111-222-3333',
    email VARCHAR(50) NOT NULL,
    creditCard INT(16) NOT NULL DEFAULT '0000000000000000',
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    PRIMARY KEY (clientID)
);
ALTER TABLE User AUTO_INCREMENT = 100;

INSERT INTO User (phoneNumber, email, creditCard, firstName, lastName, password)
VALUES 
    (1234567890, 'johnsmith@gmail.com', 11111111, 'John', 'Smith', '1234'),
    (4353536377, 'joerey@gmail.com', 22222222, 'Joe', 'Rey', '1234'),
    (6456478874, 'jameswhite@gmail.com', 33333333, 'James', 'White', '1234'),
    (1124435677, 'aaronrodgers@gmail.com', 44444444, 'Aaron', 'Rodgers', '1234'),
    (9898654463, 'johndoe@gmail.com', 55555555, 'John', 'Doe', '1234'),
    (8478976444, 'barbakew@gmail.com', 66666666, 'Barb', 'Akew', '1234'),
    (4645735282, 'oliveyew@gmail.com', 77777777, 'Olive', 'Yew', '1234'),
    (902848747, 'noahlyles@gmail.com', 88888888, 'Noah', 'Lyles', '1234'),
    (1235134356, 'victorabu@gmail.com', 99999999, 'Victor', 'Abu', '1234'),
    (6546534262, 'Lukmanace@gmail.com', 0, 'Lukman', 'Ace', '1234'),
    (2345234234, 'davidSmith@gmail.com', 2142552, 'David', 'Smith', 'ds1234'),
    (1234566757, 'susie@gmail.com', '12341234', 'Susie', 'Guzman', 'susie1234'),
    (7777888899, 'root', 0, 'default', 'default', 'pass1234');

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS Tree (
    treeID INT NOT NULL AUTO_INCREMENT,
    requestID INT NOT NULL DEFAULT 0,
    distance DOUBLE(12,2) NOT NULL DEFAULT '0',
    width DOUBLE(12,2) NOT NULL DEFAULT '0',
    height DOUBLE(12,2) NOT NULL DEFAULT '0',
    address VARCHAR(30) NOT NULL DEFAULT 'unknown',
    image1 VARCHAR(30) NOT NULL DEFAULT 'png/jpg',
    image2 VARCHAR(30) NOT NULL DEFAULT 'png/jpg',
    image3 VARCHAR(30) NOT NULL DEFAULT 'png/jpg',
    cutStatus BOOLEAN NOT NULL DEFAULT FALSE,
    cutDate DATETIME DEFAULT NULL,
    PRIMARY KEY (treeID),
    FOREIGN KEY (requestID) REFERENCES Request(requestID)
);
ALTER TABLE Tree AUTO_INCREMENT = 500;

INSERT INTO Tree (distance, width, height, address, image1, image2, image3, requestID, cutDate, cutStatus)
VALUES 
    (5, 123, 334, 'Detroit', 'a', 'b', 'c', 204, NULL, DEFAULT),
    (10, 232, 522, 'Detroit', 'a', 'd', 'e', 206, NULL, DEFAULT),
    (15, 121, 402, 'Detroit', 'h', 'g', 'f', 202, '2022-09-19 7:24:40', TRUE),
    (20, 180, 903, 'Detroit', 'i', 'j', 'k', 208, NULL, DEFAULT),
    (25, 280, 346, 'Detroit', 'n', 'm', 'l', 210, NULL, DEFAULT),
    (30, 321, 108, 'Detroit', 'o', 'p', 'q', 207, '2022-08-19 7:24:40', TRUE),
    (35, 213, 14, 'Detroit', 't', 's', 'r', 205, '2022-10-22 8:15:30', TRUE),
    (40, 91, 55, 'Detroit', 'u', 'b', 't', 206, NULL, DEFAULT),
    (50, 32, 877, 'Detroit', 'f', 'r', 'i', 210, NULL, DEFAULT),
    (45, 145, 557, 'Detroit', 'v', 'y', 's', 202, '2022-05-23 10:14:00', TRUE);

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE IF NOT EXISTS Request (
    requestID INT NOT NULL AUTO_INCREMENT,
    quoteID INT NOT NULL DEFAULT 0,
    clientID INT NOT NULL DEFAULT 0,
    treeCount INT NOT NULL DEFAULT 0,
    clientNote VARCHAR(30) DEFAULT 'pending',
    smithNote VARCHAR(30) DEFAULT 'pending',
    issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40',
    PRIMARY KEY (requestID),
    FOREIGN KEY (quoteID) REFERENCES Quote(quoteID),
    FOREIGN KEY (clientID) REFERENCES User(clientID)
);
ALTER TABLE Request AUTO_INCREMENT = 200;

INSERT INTO Request (clientNote, smithNote, clientID, quoteID, issueDate, treeCount)
VALUES 
    ('Excellent', 'Ok', 100, 20, '2020-04-16 06:53:40', 0),
    ('Fair', 'Alright', 102, 21, '2022-07-16 07:23:40', 0),
    ('Looks Good!', 'Thanks', 102, 22, '2022-05-16 09:52:40', 2),
    ('Average', 'From home', 103, 23, '2022-02-16 07:34:40', 0),
    ('Who is this!', 'David', 108, 24, '2022-08-16 08:51:40', 1),
    ('3 big trees!', 'Wow', 101, 25, '2021-10-16 10:14:40', 1),
    ('Tonight!', 'I cant', 104, 26, '2021-12-16 12:21:40', 1),
    ('Cut only to the stump!', 'Sure thing', 105, 27, '2022-01-16 15:12:40', 1),
    ('I think Im missing a tree!', 'Better find it!', 106, 28, '2022-04-16 13:51:40', 0),
    ('How do I get a quote!', 'I will send one out', 106, 29, '2022-08-16 06:46:40', 2),
    ('Tomorrow!', 'Yes', 108, 30, '2021-04-16 09:21:40', 0),
    ('Seems ok!', 'Good', 101, 21, '2020-05-16 10:12:40', 0);

SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS Quote (
    quoteID INT NOT NULL AUTO_INCREMENT,
    clientNote VARCHAR(150) DEFAULT 'pending',
    smithNote VARCHAR(150) DEFAULT 'pending',
    times TIME NOT NULL DEFAULT '01:00:00',
    price DOUBLE NOT NULL DEFAULT '0.00',
    requestID INT NOT NULL DEFAULT '0',
    clientID INT NOT NULL DEFAULT '0',
    billID INT NOT NULL DEFAULT '0',
    issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40',
    PRIMARY KEY (quoteID),
    FOREIGN KEY (requestID) REFERENCES Request(requestID),
    FOREIGN KEY (billID) REFERENCES Bill(billID),
    FOREIGN KEY (clientID) REFERENCES User(clientID)
);
ALTER TABLE Quote AUTO_INCREMENT = 20;

INSERT INTO Quote (clientNote, smithNote, times, price, requestID, clientID, issueDate, billID)
VALUES 
    ('Looks Good!', 'Awsome', '01:00:00', 1300, 200, 100, '2022-05-16 06:46:40', DEFAULT),
    ('Please!', 'Sure', '02:00:00', 6600, 201, 102, '2022-08-16 06:46:40', 10),
    ('Sold!', 'thank you', '03:00:00', 9000, 202, 102, '2022-06-16 06:46:40', DEFAULT),
    ('Why so much!', 'Its a lot of trees', '04:00:00', 2000, 203, 103, '2022-03-16 06:46:40', 10),
    ('Roger!', 'Yay', '05:00:00', 5668, 204, 103, '2022-11-16 06:46:40', 11),
    ('NeverMind!', 'OK', '06:00:00', 7880, 205, 108, '2023-01-16 06:46:40', 12),
    (DEFAULT, 'Here you go', '07:00:00', 2239, 206, 101, '2022-05-16 06:46:40', 13),
    (DEFAULT, 'Just look over this', '08:00:00', 9449, 207, 104, '2022-09-16 06:46:40', 14),
    (DEFAULT, 'I got you', '09:00:00', 4855, 208, 105, '2022-06-16 06:46:40', 15),
    ('Nice!', 'Thanks', '10:00:00', 3455, 209, 106, '2022-12-16 06:46:40', DEFAULT);

SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS Bill (
    billID INT NOT NULL AUTO_INCREMENT,
    clientNote VARCHAR(150) DEFAULT 'pending',
    smithNote VARCHAR(150) DEFAULT 'pending',
    price DOUBLE(10,2) NOT NULL DEFAULT 5000,
    quoteID INT NOT NULL DEFAULT 0,
    clientID INT NOT NULL DEFAULT 0,
    issueDate DATETIME NOT NULL DEFAULT '2023-01-31 10:24:40',
    dueDate DATETIME NOT NULL DEFAULT '2023-02-24 10:24:40',
    payDate DATETIME DEFAULT NULL,
    payStatus BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (billID),
    FOREIGN KEY (quoteID) REFERENCES Quote(quoteID),
    FOREIGN KEY (clientID) REFERENCES User(clientID)
);
ALTER TABLE Bill AUTO_INCREMENT = 10;

-- Set foreign key checks to 0
SET FOREIGN_KEY_CHECKS = 0;

-- Insert data into the Bill table
INSERT INTO Bill (clientNote, smithNote, quoteID, clientID, issueDate, dueDate, payDate, payStatus, price)
VALUES 
(default, 'Thank You', 20, 100, '2022-07-24 10:24:40', '2022-08-24 10:24:40', default, false, 1300),
('Paid', 'Thank You', 21, 102, '2022-09-24 10:24:40', '2022-10-24 10:24:40', '2022-09-25 06:24:40', true, 6600),
('Too expensive', 'Why', 22, 102, '2022-07-24 10:24:40', '2022-08-24 10:24:40', default, false, 9000),
('Why this date', 'Its the fastest', 23, 103, '2022-04-24 10:24:40', '2022-05-24 10:24:40', '2022-08-11 10:24:40', true, 2000),
("Can you show me what you're charging", 'Sure', 24, 103, '2022-12-24 10:24:40', '2023-01-24 10:24:40', default, false, 5668),
('Alright', 'Sweet', 25, 108, '2022-07-24 10:24:40', '2022-08-24 10:24:40', '2022-08-01 10:24:40', true, 7880),
(default, 'Thank You', 26, 101, '2022-02-24 10:24:40', '2022-03-24 10:24:40', default, false, 2239),
(default, 'Thank You', 27, 104, '2022-06-24 10:24:40', '2022-07-24 10:24:40', '2022-08-11 10:24:40', true, 9449),
(default, 'Thank You', 28, 105, '2022-10-24 10:24:40', '2022-11-24 10:24:40', '2022-12-11 10:24:40', true, 4855),
(default, 'Thank You', 29, 106, '2022-07-24 10:24:40', '2023-01-24 10:24:40', default, false, 3455);

-- Set foreign key checks back to 1
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;

-- Create the RequestResponse table
CREATE TABLE IF NOT EXISTS RequestResponse (
  replyRID INT NOT NULL AUTO_INCREMENT,
  requestID INT NOT NULL DEFAULT 0,
  clientID INT NOT NULL DEFAULT 0,  
  reply VARCHAR(50) NOT NULL DEFAULT '',
  issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40', 
  PRIMARY KEY (replyRID),
  FOREIGN KEY (requestID) REFERENCES Request(requestID),
  FOREIGN KEY (clientID) REFERENCES User(clientID)
) AUTO_INCREMENT = 600;

-- Insert data into the RequestResponse table
INSERT INTO RequestResponse (requestID, clientID, reply)
VALUES 
(21, 102, 'pass'),
(21, 102, 'Looks Good'),
(21, 102, 'Nevermind'),
(24, 105, 'OK'),
(24, 107, 'Where?'),
(25, 108, 'Too Expensive'),
(27, 109, 'Ill check'),
(28, 110, 'Thanks'),
(29, 111, 'Alright');

-- Set foreign key checks back to 1
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;

-- Create the QuoteResponse table
CREATE TABLE IF NOT EXISTS QuoteResponse (
  replyQID INT NOT NULL AUTO_INCREMENT,
  quoteID INT NOT NULL DEFAULT 0,
  clientID INT NOT NULL DEFAULT 0,  
  reply VARCHAR(50) NOT NULL DEFAULT '',
  issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40', 
  PRIMARY KEY (replyQID),
  FOREIGN KEY (quoteID) REFERENCES Quote(quoteID),
  FOREIGN KEY (clientID) REFERENCES User(clientID)
) AUTO_INCREMENT = 500;

-- Insert data into the QuoteResponse table
INSERT INTO QuoteResponse (quoteID, clientID, reply)
VALUES 
(21, 102, 'pass'),
(21, 102, 'Looks Good'),
(21, 102, 'Nevermind'),
(24, 105, 'OK'),
(24, 107, 'Where?'),
(25, 108, 'Too Expensive'),
(27, 109, 'Ill check'),
(28, 110, 'Thanks'),
(29, 111, 'Alright');

-- Set foreign key checks back to 1
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;

-- Create the BillResponse table
CREATE TABLE IF NOT EXISTS BillResponse (
  replyBID INT NOT NULL AUTO_INCREMENT,
  billID INT NOT NULL DEFAULT 0,
  clientID INT NOT NULL DEFAULT 0,  
  reply VARCHAR(50) NOT NULL DEFAULT '',
  issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40', 
  PRIMARY KEY (replyBID),
  FOREIGN KEY (billID) REFERENCES Bill(billID),
  FOREIGN KEY (clientID) REFERENCES User(clientID)
) AUTO_INCREMENT = 700;

-- Insert data into the BillResponse table
INSERT INTO BillResponse (billID, clientID, reply)
VALUES 
(21, 102, 'pass'),
(21, 102, 'Looks Good'),
(21, 102, 'Nevermind'),
(24, 105, 'OK'),
(24, 107, 'Where?'),
(25, 108, 'Too Expensive'),
(27, 109, 'Ill check'),
(28, 110, 'Thanks'),
(29, 111, 'Alright');

-- Set foreign key checks back to 1
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;

-- Insert data into the Request table
INSERT INTO Request (clientID, clientNote, issueDate) 
VALUES (111, 'hi', '2023-11-16 13:44:13');

-- Set foreign key checks back to 1
SET FOREIGN_KEY_CHECKS = 1;

-- Select data from User table
SELECT * FROM User;

-- Select data from Tree table
SELECT * FROM Tree;

-- Select data from Request table
SELECT * FROM Request;

-- Select data from Quote table
SELECT * FROM Quote;

-- Select data from Bill table
SELECT * FROM Bill;

-- Select data from RequestResponse table
SELECT * FROM RequestResponse;

-- Select data from QuoteResponse table
SELECT * FROM QuoteResponse;

-- Select data from BillResponse table
SELECT * FROM BillResponse;


-- Big Client
SELECT
    clientID,
    SUM(treeCount) AS sumCount
FROM
    Request
GROUP BY
    clientID
HAVING
    sumCount = (
        SELECT
            MAX(sub.sumCount)
        FROM
            (
                SELECT
                    clientID,
                    SUM(treeCount) AS sumCount
                FROM
                    Request
                GROUP BY
                    clientID
            ) AS sub
    );


-- Easy Client
SELECT
    clientID AS EasyClient
FROM
    Quote
WHERE
    billID != 0
    AND clientNote = "pending"
GROUP BY
    clientID
HAVING
    COUNT(*) > 0;


-- One Tree
SELECT
    Q.quoteID AS OneTreeQuotes,
    Q.requestID
FROM
    Quote AS Q
JOIN
    Request AS R ON Q.quoteID = R.quoteID
WHERE
    Q.billID != 0
    AND R.treeCount = 1;


-- Prospective Clients
SELECT DISTINCT
    clientID AS ProspectiveClient
FROM
    quote
WHERE
    billID = 0;


-- Highest Tree
SELECT
    treeID AS HighestTree,
    height
FROM
    Tree
ORDER BY
    height DESC
LIMIT 1;


-- Overdue Bills
SELECT
    billID AS OverDueBills
FROM
    Bill
WHERE
    DATEDIFF(current_timestamp, issueDate) > 7
    AND payStatus = false;



-- Bad Clients
SELECT DISTINCT
    clientID AS BadClients
FROM
    Bill
WHERE
    DATEDIFF(current_timestamp, issueDate) > DATEDIFF(dueDate, issueDate)
    AND payStatus = false;


-- Good Clients
SELECT DISTINCT
    clientID AS GoodClients
FROM
    Bill
WHERE
    DATEDIFF(payDate, issueDate) < 1
    AND payStatus = true;



-- ClientStats
-- Client Stats
SELECT
    R.clientID,
    SUM(R.treeCount) AS totalTreeCount
FROM
    Request R
GROUP BY
    R.clientID;

-- Total Bill Amounts
SELECT
    B.clientID,
    SUM(B.price) AS totalBillAmount
FROM
    Bill B
GROUP BY
    B.clientID;

-- Total Paid Bill Amounts
SELECT
    B.clientID,
    SUM(B.price) AS totalPaidAmount
FROM
    Bill B
WHERE
    B.payStatus = true
GROUP BY
    B.clientID;

-- Tree Info with Client
SELECT
    T.treeID,
    T.requestID,
    T.cutDate,
    R.clientID
FROM
    Tree T
JOIN
    Request R ON T.requestID = R.requestID
WHERE
    T.cutStatus = true;
