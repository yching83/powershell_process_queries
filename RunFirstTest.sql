CREATE VIEW ZYC_MyTest1 As
(SELECT '1' as ID, 'London' as Location1 FROM DUAL UNION ALL
 SELECT '2' as ID, 'Sidney' as Location1 FROM DUAL UNION ALL
 SELECT '3' as ID, 'Taipei' as Location1 FROM DUAL UNION ALL
 SELECT '4' as ID, 'Shanghai' as Location1 FROM DUAL UNION ALL
 SELECT '5' as ID, 'Sao Paulo' as Location1 FROM DUAL);
 
 CREATE TABLE ZYC_MyTest2 As
 (SELECT 'Mary' as SPName, 'Computer Parts' as Market, '1' as ID FROM DUAL UNION ALL
  SELECT 'Joe' as SPName, 'Computer Services' as Market, '2' as ID FROM DUAL UNION ALL
  SELECT 'Bud' as SPName, 'Computer Parts' as Market, '3' as ID FROM DUAL UNION ALL
  SELECT 'Renee' as SPName, 'Computer Parts' as Market, '4' as ID FROM DUAL UNION ALL
  SELECT 'Seth' as SPName, 'Computer Services' as Market, '5' as ID FROM DUAL);
  
  CREATE TABLE ZYC_FinalMyTest As
 (SELECT B.SPName, B.Market, A.ID, A.Location1 FROM 
  ZYC_MyTest2 B, ZYC_MyTest1 A
  WHERE B.ID = A.ID);
  
  drop view ZYC_MyTest1;
  drop table ZYC_MyTest2; 
  SELECT * FROM ZYC_FinalMyTest;