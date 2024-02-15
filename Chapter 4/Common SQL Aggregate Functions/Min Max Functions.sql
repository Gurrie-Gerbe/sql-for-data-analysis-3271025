SELECT State,
  AVG(TotalDue) as Avg_Due,
  MIN(TotalDue) as Min_Due,
  MAX(TotalDue) as Max_Due,
  SUM(TotalDue) as Total_Sales,
  SUM(TotalDue) / (1.0*(Avg(TotalDue))) as Number_Sales
 FROM Customer C
  JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY State
ORDER BY Number_Sales DESC, State