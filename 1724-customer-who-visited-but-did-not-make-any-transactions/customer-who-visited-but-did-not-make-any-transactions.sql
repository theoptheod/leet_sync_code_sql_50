# Write your MySQL query statement below
SELECT
    `Visits`.`customer_id`,
    COUNT(*) AS `count_no_trans`
FROM `Visits`
LEFT OUTER JOIN `Transactions`
ON `Visits`.`visit_id` = `Transactions`.`visit_id`
WHERE `Transactions`.`amount` IS NULL
AND `Transactions`.`visit_id` IS NULL
GROUP BY `Visits`.`customer_id`
ORDER BY `count_no_trans` ASC;