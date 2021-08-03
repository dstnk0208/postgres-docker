-- age x sex
SELECT
    sex,
    floor(date_part('year', age(current_date, birthday)) / 10) * 10 AS age,
    COUNT(*) AS number_of_persons
FROM
    users
GROUP BY
    sex, age
ORDER BY
    sex, age
;