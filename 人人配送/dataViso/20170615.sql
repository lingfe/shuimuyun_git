
SELECT xi.`xiaId`,xi.`kuaikeName`,xi.`kuaikePhone`,xi.`kuaikeAddress`,xi.`shouhuoName`,xi.`shouhuoPhone`,xi.`shouhuoAddress`,xi.`shouhuoAddressInfo`,xi.`quhouDate`,xi.`kaikePrioes`,xi.`status`,xi.`okDate`,xi.`shopName`,xi.`Shopzholiang`,xi.`ShopNumer`,xi.`Shopprices`,xi.`shopguige`,xi.`Shopdate`,xi.kuaikeAddressInfo,xi.shopType,xi.timeString,xi.shopImages,xi.payment,xi.kuaikeId   
	FROM qiangordertab q INNER JOIN xiaordertab xi ON q.`xiaId`=xi.`xiaId` WHERE q.kuaikeId='4be534d1-8069-4bf6-a738-736479319247' AND q.status=0

4be534d1-8069-4bf6-a738-736479319247

SELECT * FROM xiaordertab WHERE 
xiaId IN (SELECT  xi.* FROM xiaordertab xi INNER JOIN qiangordertab q ON q.`xiaId`=xi.`xiaId` WHERE q.kuaikeId='4be534d1-8069-4bf6-a738-736479319247' AND q.status=0)
SELECT * FROM xiaordertab