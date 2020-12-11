#1_1
CREATE VIEW vip
AS SELECT *
	FROM customers c
    WHERE c.discnt >=10
		WITH CHECK OPTION;
#1_2
INSERT INTO vip	VALUES('c100','Naz','Istanbul',15);
#1_3
INSERT INTO vip VALUES('c101','Glass','Houston',5);
#1_4
INSERT INTO customers VALUES('c101','Glass','Houston',5);
#1_5
SELECT *
FROM vip;
#1_6
DELETE FROM customers c
WHERE c.cid = 'c100' or c.cid = 'c101';
#1_7
DROP VIEW vip;

#2_1
CREATE VIEW ordview(ordno,ordyear,ordmonth,cid,aid,pid,qty,dols)
AS SELECT ordno,YEAR(orddate),MONTH(orddate),cid,aid,pid,qty,dols
	FROM orders;
#2_2
CREATE VIEW monthview(pid,ordmonth,ordnum,dols)
AS SELECT pid,ordmonth,COUNT(*),SUM(dols)
	FROM ordview
    GROUP BY pid,ordmonth;
#2_3
SELECT o1.pid,o1.ordmonth,o1.dols
FROM monthview o1
WHERE o1.dols >= ALL(
			SELECT max(o2.dols)
            FROM monthview o2
            WHERE o2.pid = o1.pid
			);
#2_4
DROP VIEW monthview;
DROP VIEW ordview;