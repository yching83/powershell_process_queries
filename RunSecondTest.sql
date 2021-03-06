CREATE VIEW ZYC_HireTest1 As
(SELECT '1' as ID, TO_DATE(TO_CHAR('09/10/2001', 'MM/DD/YYYY'), 'MM/DD/YYYY') HireDate FROM DUAL UNION ALL
 SELECT '2' as ID, TO_DATE(TO_CHAR('12/10/2011', 'MM/DD/YYYY'), 'MM/DD/YYYY') HireDate FROM DUAL UNION ALL
 SELECT '3' as ID, TO_DATE(TO_CHAR('02/05/2020', 'MM/DD/YYYY'), 'MM/DD/YYYY') HireDate FROM DUAL UNION ALL
 SELECT '4' as ID, TO_DATE(TO_CHAR('05/02/2020', 'MM/DD/YYYY'), 'MM/DD/YYYY') HireDate FROM DUAL UNION ALL
 SELECT '5' as ID, TO_DATE(TO_CHAR('05/02/2020', 'MM/DD/YYYY'), 'MM/DD/YYYY') HireDate FROM DUAL);
 
 CREATE TABLE ZYC_MySales1 As
 (SELECT 'Mary' as SPName, 5000 as SalesAmt, '1' as ID FROM DUAL UNION ALL
  SELECT 'Joe' as SPName, 6000 as SalesAmt, '2' as ID FROM DUAL UNION ALL
  SELECT 'Bud' as SPName, 7500 as SalesAmt, '3' as ID FROM DUAL UNION ALL
  SELECT 'Renee' as SPName, 2000 as SalesAmt, '4' as ID FROM DUAL UNION ALL
  SELECT 'Seth' as SPName, 50000 as SalesAmt, '5' as ID FROM DUAL);
  
  CREATE TABLE ZYC_FinalMyTest2 As
 (SELECT A.* FROM 
  ZYC_FinalMyTest A, ZYC_HireTest1 B, ZYC_MySales1 C
  WHERE B.ID = A.ID
  AND A.ID = C.ID);
  
  drop view ZYC_HireTest1;
  drop table ZYC_MySales1; 
  SELECT * FROM ZYC_FinalMyTest2;