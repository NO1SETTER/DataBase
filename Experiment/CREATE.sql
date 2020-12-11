CREATE TABLE Customers(
    cid CHAR(4) PRIMARY KEY,
    cname CHAR(20) NOT NULL,
    city CHAR(20),
    discnt FLOAT
);

CREATE TABLE Agents(
    aid CHAR(3) PRIMARY KEY,
    aname CHAR(20) NOT NULL,
    city CHAR(20),
    percent SMALLINT 
);

CREATE TABLE Products(
    pid CHAR(3) PRIMARY KEY,
    pname CHAR(20) NOT NULL,
    city CHAR(20),
    quantity INT NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE Orders(
    ordno INT PRIMARY KEY,
    orddate DATE NOT NULL,
	cid CHAR(4),
    aid CHAR(3),
    pid CHAR(3),
    qty INT,
    dols FLOAT,

    CONSTRAINT key1
    FOREIGN KEY (cid) REFERENCES Customers(cid)
        ON UPDATE CASCADE 
        ON DELETE SET NULL,
    
    CONSTRAINT key2
    FOREIGN KEY (aid) REFERENCES Agents(aid)
        ON UPDATE RESTRICT
        ON DELETE SET NULL,

    CONSTRAINT key3
    FOREIGN KEY (pid) REFERENCES Products(pid)
        ON UPDATE SET NULL 
        ON DELETE SET NULL
);