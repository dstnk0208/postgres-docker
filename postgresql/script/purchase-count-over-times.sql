WITH cnt_user_id AS (
    SELECT
        user_id,
        COUNT(user_id) AS cnt
    FROM
        purchase
    GROUP BY
        user_id
)
SELECT
    purchase.user_id,
    AVG(purchase_amount)
FROM
    purchase
JOIN
    cnt_user_id
ON purchase.user_id = cnt_user_id.user_id
WHERE
    cnt_user_id.cnt >= 4
GROUP BY
    purchase.user_id
ORDER BY
    purchase.user_id
;