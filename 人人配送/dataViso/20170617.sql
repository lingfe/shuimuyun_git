

SELECT a.dfk,b.yjd,c.yqh,d.wpj FROM  
	(SELECT COUNT(xiaId) AS dfk FROM xiaordertab WHERE STATUS=0 AND payment=0 AND kuaikeId='') a,
	(SELECT COUNT(xiaId) AS yjd FROM xiaordertab WHERE STATUS=1 AND payment=1) b,
	(SELECT COUNT(xiaId) AS yqh FROM xiaordertab WHERE STATUS=2 AND payment=1) c,
	(SELECT COUNT(xiaId) AS wpj FROM xiaordertab WHERE STATUS=3 AND payment=1) d
	

UPDATE kuaiketab SET kuaikeName='a',kuaikePhone='110',kuaikeAddressInfo='..' WHERE kuaikeId='00a3559b-5530-4d40-bb2b-a9a7270c0b5a';


SELECT * FROM xiaordertab  WHERE STATUS=0 AND payment=1 AND kuaikeId='4be534d1-8069-4bf6-a738-736479319247';

SELECT a.dfk,b.yjd,c.yqh,d.wpj FROM  
	(SELECT COUNT(xiaId) AS dfk FROM xiaordertab WHERE STATUS=0 AND payment=0 AND kuaikeId='4be534d1-8069-4bf6-a738-736479319247') a,
	(SELECT COUNT(xiaId) AS yjd FROM xiaordertab WHERE STATUS=1 AND payment=1 AND kuaikeId='4be534d1-8069-4bf6-a738-736479319247') b,
	(SELECT COUNT(xiaId) AS yqh FROM xiaordertab WHERE STATUS=2 AND payment=1 AND kuaikeId='4be534d1-8069-4bf6-a738-736479319247') c,
	(SELECT COUNT(xiaId) AS wpj FROM xiaordertab WHERE STATUS=3 AND payment=1 AND kuaikeId='4be534d1-8069-4bf6-a738-736479319247') d

