-- 코드를 입력하세요
# SELECT I.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(REVIEW_SCORE/COUNT(REVIEW_ID), 2) SCORE
# FROM REST_INFO I
#  JOIN REST_REVIEW R ON I.REST_ID = R.REST_ID
# GROUP BY I.REST_ID
# ORDER BY REST_ID;


# SELECT I.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(REVIEW_SCORE/COUNT(REVIEW_ID), 2) SCORE
# FROM REST_INFO I
# LEFT JOIN REST_REVIEW R ON I.REST_ID = R.REST_ID
# WHERE ADDRESS LIKE "서울%" AND REVIEW_SCORE IS NOT NULL
# GROUP BY I.REST_ID
# ORDER BY SCORE DESC, FAVORITES;

SELECT RE.REST_ID, RI.REST_NAME, RI.FOOD_TYPE, RI.FAVORITES,
    RI.ADDRESS, ROUND(AVG(RE.REVIEW_SCORE), 2) AS SCORE
FROM REST_REVIEW RE
JOIN (
    SELECT * 
    FROM REST_INFO
    WHERE ADDRESS LIKE '서울%'
    ) RI
ON RI.REST_ID = RE.REST_ID
GROUP BY RE.REST_ID
ORDER BY SCORE DESC, FAVORITES DESC
;