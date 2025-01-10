SELECT SUM(G.SCORE) AS SCORE, G.EMP_NO, E.EMP_NAME, E.POSITION, E.EMAIL
FROM HR_EMPLOYEES E 
    JOIN HR_DEPARTMENT D ON E.DEPT_ID = D.DEPT_ID 
    JOIN HR_GRADE G ON E.EMP_NO = G.EMP_NO
WHERE G.YEAR = '2022'
GROUP BY EMP_NO
ORDER BY SCORE DESC
LIMIT 1;