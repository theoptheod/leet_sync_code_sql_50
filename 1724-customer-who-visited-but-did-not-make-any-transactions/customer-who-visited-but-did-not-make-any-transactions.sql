# Write your MySQL query statement below
SELECT
    `visits`.`customer_id`,
    COUNT(`visits`.`visit_id`) AS `count_no_trans` 
FROM `visits`
LEFT JOIN `transactions`
ON `visits`.`visit_id` = `transactions`.`visit_id`
WHERE `transaction_id` IS NULL
GROUP BY (`visits`.`customer_id`);