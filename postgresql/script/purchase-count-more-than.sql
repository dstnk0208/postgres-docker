SELECT
     user_id
  ,  COUNT(user_id) AS purchase_cnt
FROM    purchase
GROUP BY user_id
;
  