
SELECT xi.`xiaId`,xi.`kuaikeName`,xi.`kuaikePhone`,xi.`kuaikeAddress`,xi.`shouhuoName`,xi.`shouhuoPhone`,xi.`shouhuoAddress`,xi.`shouhuoAddressInfo`,xi.`quhouDate`,xi.`kaikePrioes`,xi.`status`,xi.`okDate`,xi.`shopName`,xi.`Shopzholiang`,xi.`ShopNumer`,xi.`Shopprices`,xi.`shopguige`,xi.`Shopdate`,xi.kuaikeAddressInfo,xi.shopType,xi.timeString,xi.shopImages,xi.payment,xi.kuaikeId   
	FROM qiangordertab q INNER JOIN xiaordertab xi ON q.`xiaId`=xi.`xiaId` WHERE q.kuaikeId='4be534d1-8069-4bf6-a738-736479319247' AND q.status=0 AND q.xiaId='d4d6ea12-69d2-4712-a967-8e0a2ce9d560'

4be534d1-8069-4bf6-a738-736479319247 

SELECT * FROM  xiaordertab xi WHERE xi.`kuaikeName` LIKE '%a%'  OR xi.`kuaikeAddress` LIKE '%a%'  OR xi.`shopguige` LIKE 'a' OR  xi.`kuaikeAddressInfo` LIKE '%a%' OR xi.`shouhuoName` LIKE '%a%' OR xi.`shouhuoAddressInfo` LIKE '%a%' OR xi.`shouhuoAddress` LIKE '%a%' OR xi.`shopType` LIKE '%a%' 


SELECT * FROM xiaordertab WHERE 
xiaId IN (SELECT  xi.* FROM xiaordertab xi INNER JOIN qiangordertab q ON q.`xiaId`=xi.`xiaId` WHERE q.kuaikeId='4be534d1-8069-4bf6-a738-736479319247' AND q.status=0)


SELECT * FROM xiaordertab WHERE xiaId='d4d6ea12-69d2-4712-a967-8e0a2ce9d560'
SELECT * FROM xiaordertab WHERE xiaId='d4d6ea12-69d2-4712-a967-8e0a2ce9d560'
