

SELECT a.dfk,b.yjd,c.yqh,d.wpj FROM  
	(SELECT COUNT(xiaId) AS dfk FROM xiaordertab WHERE STATUS=0 AND payment=0) a,
	(SELECT COUNT(xiaId) AS yjd FROM xiaordertab WHERE STATUS=1 AND payment=1) b,
	(SELECT COUNT(xiaId) AS yqh FROM xiaordertab WHERE STATUS=2 AND payment=1) c,
	(SELECT COUNT(xiaId) AS wpj FROM xiaordertab WHERE STATUS=3 AND payment=1) d
	
	