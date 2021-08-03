SELECT
  product_id,
  SUM(purchase_amount)
FROM
  purchase
GROUP BY
  product_id
ORDER BY
  product_id
;