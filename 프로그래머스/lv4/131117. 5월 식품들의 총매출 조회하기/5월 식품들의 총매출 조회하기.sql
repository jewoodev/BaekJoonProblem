-- 코드를 입력하세요
SELECT R.PRODUCT_ID, R.PRODUCT_NAME, SUM(R.PRICE * O.AMOUNT) TOTAL_SALES
FROM FOOD_PRODUCT R INNER JOIN FOOD_ORDER O
ON R.PRODUCT_ID = O.PRODUCT_ID
WHERE DATE_FORMAT(O.PRODUCE_DATE, '%Y-%m') = '2022-05'
GROUP BY R.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, R.PRODUCT_ID ASC;