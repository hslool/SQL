Select * --筛选* 表示所有’行‘
from Artist
limit 10;
SELECT ArtistId, Name --查询特定字段order by
from Artist;
SELECT *  --排序
FROM Artist
ORDER BY Name ASC;
SELECT *  --筛选where
FROM Artist
WHERE Name like '%a%';
SELECT COUNT(*)  --计数count（）
FROM Artist;
select Country, Count(*) as user_count  --分组group by
from Customer
group by Country
order by user_count desc;
SELECT i.InvoiceId, i.Total, c.FirstName, c.LastName, c.CustomerId  --多表关联join
FROM Invoice i
JOIN Customer c
    ON i.CustomerId = c.CustomerId
order by Total desc
LIMIT 10;
SELECT c.Country, SUM(i.Total) as revenue  --计算每个国家的销售额
FROM Invoice i 
JOIN Customer c 
    ON i.InvoiceId = c.CustomerId 
GROUP BY c.Country 
ORDER BY revenue 


