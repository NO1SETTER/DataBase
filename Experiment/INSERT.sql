INSERT INTO Customers VALUES('c001', 'Tiptop', 'Duluth', 10.00);
INSERT INTO Customers VALUES('c002', 'Basics', 'Dallas', 12.00);
INSERT INTO Customers VALUES('c003', 'Allied', 'Dallas', 8.00);
INSERT INTO Customers VALUES('c004', 'ACME', 'Duluth', 8.00);
INSERT INTO Customers VALUES('c006', 'ACME', 'Kyoto', 0.00);

INSERT INTO Agents VALUES('a01', 'Smith', 'New York', 6);
INSERT INTO Agents VALUES('a02', 'Jones', 'Newark',   6);
INSERT INTO Agents VALUES('a03', 'Brown', 'Tokyo',    7);
INSERT INTO Agents VALUES('a04', 'Gray',  'New York', 6);
INSERT INTO Agents VALUES('a05', 'Otasi', 'Duluth',   5);
INSERT INTO Agents VALUES('a06', 'Smith', 'Dallas',   5);

INSERT INTO Products VALUES('p01', 'comb',   'Dallas', 111400, 0.50);
INSERT INTO Products VALUES('p02', 'brush',  'Newark', 203000, 0.50);
INSERT INTO Products VALUES('p03', 'razor',  'Duluth', 150600, 1.00);
INSERT INTO Products VALUES('p04', 'pen',    'Duluth', 125300, 1.00);
INSERT INTO Products VALUES('p05', 'pencil',  'Dallas', 221400, 1.00);
INSERT INTO Products VALUES('p06', 'folder',  'Dallas', 123100, 2.00);
INSERT INTO Products VALUES('p07', 'case',   'Newark', 100500, 1.00);

INSERT INTO Orders VALUES(1011, '2016-01-08', 'c001', 'a01', 'p01', 1000, 450.00);
INSERT INTO Orders VALUES(1012, '2016-01-12', 'c001', 'a06', 'p01', 1000, 450.00);
INSERT INTO Orders VALUES(1013, '2016-01-13', 'c002', 'a03', 'p03', 1000, 880.00);
INSERT INTO Orders VALUES(1014, '2016-01-18', 'c003', 'a03', 'p05', 1200, 1104.00);
INSERT INTO Orders VALUES(1015, '2016-01-23', 'c003', 'a03', 'p05', 1200, 1104.00);
INSERT INTO Orders VALUES(1016, '2016-01-25', 'c006', 'a01', 'p01', 1000, 500.00);
INSERT INTO Orders VALUES(1017, '2016-02-10', 'c001', 'a06', 'p03', 600,  540.00);
INSERT INTO Orders VALUES(1018, '2016-02-16', 'c001', 'a03', 'p04', 600,  540.00);
INSERT INTO Orders VALUES(1019, '2016-02-24', 'c002', 'a02', 'p02', 400,  180.00);
INSERT INTO Orders VALUES(1020, '2016-02-05', 'c006', 'a03', 'p07', 600,  600.00);
INSERT INTO Orders VALUES(1021, '2016-02-28', 'c004', 'a06', 'p01', 1000, 460.00);
INSERT INTO Orders VALUES(1022, '2016-03-08', 'c001', 'a05', 'p06', 400,  720.00);
INSERT INTO Orders VALUES(1023, '2016-03-12', 'c001', 'a04', 'p05', 500,  450.00);
INSERT INTO Orders VALUES(1024, '2016-03-12', 'c006', 'a06', 'p01', 800,  400.00);
INSERT INTO Orders VALUES(1025, '2016-04-07', 'c001', 'a05', 'p07', 800,  720.00);
INSERT INTO Orders VALUES(1026, '2016-05-20', 'c002', 'a05', 'p03', 800,  704.00);
INSERT INTO Orders VALUES(1027, '2016-05-20', 'c006', 'a03', 'p05', 500,  450.00);

