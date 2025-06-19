## 1. Print profit % for all the movies

SELECT *,
CASE
	WHEN budget > 0 THEN ROUND(((revenue-budget)/budget * 100),2)
    ELSE 0
END AS profit_percentage
FROM financials