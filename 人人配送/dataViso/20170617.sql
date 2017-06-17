

SELECT a.dfk,b.yjd,c.yqh,d.wpj FROM  
	(SELECT COUNT(xiaId) AS dfk FROM xiaordertab WHERE STATUS=0 AND payment=0 AND kuaikeId='') a,
	(SELECT COUNT(xiaId) AS yjd FROM xiaordertab WHERE STATUS=1 AND payment=1) b,
	(SELECT COUNT(xiaId) AS yqh FROM xiaordertab WHERE STATUS=2 AND payment=1) c,
	(SELECT COUNT(xiaId) AS wpj FROM xiaordertab WHERE STATUS=3 AND payment=1) d
	

UPDATE kuaiketab SET kuaikeName='a',kuaikePhone='110',kuaikeAddressInfo='..' WHERE kuaikeId='00a3559b-5530-4d40-bb2b-a9a7270c0b5a';




SELECT a.dfk,b.yjd,c.yqh,d.wpj FROM  
	(SELECT COUNT(xiaId) AS dfk FROM xiaordertab WHERE STATUS=0 AND payment=0 AND kuaikeId='00a3559b-5530-4d40-bb2b-a9a7270c0b5a') a,
	(SELECT COUNT(xiaId) AS yjd FROM xiaordertab WHERE STATUS=1 AND payment=1 AND kuaikeId='00a3559b-5530-4d40-bb2b-a9a7270c0b5a') b,
	(SELECT COUNT(xiaId) AS yqh FROM xiaordertab WHERE STATUS=2 AND payment=1 AND kuaikeId='00a3559b-5530-4d40-bb2b-a9a7270c0b5a') c,
	(SELECT COUNT(xiaId) AS wpj FROM xiaordertab WHERE STATUS=3 AND payment=1 AND kuaikeId='00a3559b-5530-4d40-bb2b-a9a7270c0b5a') d

