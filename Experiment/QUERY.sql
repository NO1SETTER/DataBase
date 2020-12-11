#1
SELECT a.aid
FROM agents a
WHERE NOT EXISTS (
	SELECT *
    FROM orders o,customers c
    WHERE o.aid = a.aid AND o.cid = c.cid AND c.city = 'Duluth'
	);
    
#2
SELECT a.aid
FROM agents a
WHERE EXISTS(
	SELECT p.pid 
    FROM products p
    WHERE NOT EXISTS(
		SELECT c.cid 
        FROM customers c
        WHERE (c.city = 'Duluth' OR c.city = 'Kyoto') AND NOT EXISTS(
			SELECT *
            FROM orders o
            WHERE o.cid = c.cid AND o.pid = p.pid AND o.aid =a.aid)));
            
#3
SELECT p.pid
FROM products p
WHERE EXISTS(
	SELECT *
    FROM orders o,agents a,customers c
    WHERE o.pid = p.pid AND o.aid = a.aid AND o.cid = c.cid AND a.city = c.city
		);
        
#4
SELECT p.pid
FROM products p
WHERE NOT EXISTS(
	SELECT c1.city
    FROM customers c1
    WHERE NOT EXISTS(
		SELECT *
        FROM orders o,customers c2
        WHERE c1.city = c2.city AND c2.cid = o.cid AND p.pid = o.pid));
        
#5
SELECT a.aid,a.percent
FROM agents a
WHERE NOT EXISTS(
	SELECT c.cid
    FROM customers c
    WHERE c.city = 'Duluth' AND NOT EXISTS(
		SELECT *
        FROM orders o
        WHERE o.cid = c.cid AND a.aid = o.aid));
        
#6_1
SELECT a1.aid
FROM agents a1
WHERE a1.percent >= all(
			SELECT a2.percent
            FROM agents a2
            );
            
#6_2
SELECT a1.aid
FROM agents a1
WHERE a1.percent = ANY(
		SELECT MAX(a2.percent)
        FROM agents a2
        );
        
        
#7
SELECT o1.cid,o1.ordno,o1.orddate,o2.ordno,o2.orddate
FROM orders o1,orders o2
WHERE o1.cid = o2.cid AND o1.ordno = ANY(
									SELECT min(o3.ordno)
                                    FROM orders o3
                                    WHERE o3.cid = o1.cid)
					  AND o2.ordno = ANY(
									SELECT max(o4.ordno)
                                    FROM orders o4
									WHERE o4.cid = o1.cid
                                    );
                                    
#8
SELECT *
FROM agents a
WHERE a.city LIKE 'N%o%';

#9 
SELECT o.cid,COUNT(*),SUM(dols),AVG(dols)
FROM orders o
GROUP BY o.cid
ORDER BY SUM(dols) DESC;

#10
SELECT o1.pid,o1.aid
FROM orders o1
GROUP BY o1.pid,o1.aid
HAVING SUM(o1.qty) >= ALL(SELECT SUM(o2.qty)
			FROM orders o2
            WHERE o2.pid = o1.pid
            GROUP BY o2.aid
		  );
        