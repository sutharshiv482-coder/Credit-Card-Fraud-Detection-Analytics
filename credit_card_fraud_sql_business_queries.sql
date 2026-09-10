use data_analysis;

select * from credit_card;

# Total transaction count
SELECT count(*) as Total_transaction
from credit_card;

# Fraudulent transaction count
SELECT count(*) as fraudulent_transactions
from credit_card
where Class='1';

# Overall fraud rate
SELECT ROUND(100.0 * SUM(CASE WHEN class = '1' THEN 1 ELSE 0 END) / COUNT(*),2) AS fraud_rate
FROM credit_card;

# Total transaction amount
SELECT ROUND(SUM(amount_inr), 2) AS total_transaction_amount
FROM credit_card;

# Fraudulent transaction amount
SELECT 
    ROUND(SUM(amount_inr), 2) AS fraudulent_transaction_amount
FROM credit_card
WHERE class = '1';

# Average transaction amount
SELECT round(avg(amount_inr),2) AS average_transaction_amount 
from credit_card;

# Fraud rate by merchant category
SELECT merchant_category,COUNT(*) AS total_transactions,SUM(CASE WHEN class = '1' THEN 1 ELSE 0 END) AS fraud_transactions,
ROUND(100.0 * SUM(CASE WHEN class = '1' THEN 1 ELSE 0 END)/ COUNT(*),2) AS fraud_rate
FROM credit_card
GROUP BY merchant_category
ORDER BY fraud_rate DESC;

# Fraud rate by card type
SELECT card_type,COUNT(*) AS total_transactions,SUM(CASE WHEN class = '1' THEN 1 ELSE 0 END) AS fraud_transactions,
ROUND(100.0 * SUM(CASE WHEN class = '1' THEN 1 ELSE 0 END)/ COUNT(*),2) AS fraud_rate
FROM credit_card
GROUP BY card_type
ORDER BY fraud_rate DESC;

# High-value fraudulent transactions
SELECT transaction_id,amount_inr,merchant_category,entry_mode,card_type,is_foreign
FROM credit_card
WHERE class = '1'
  AND amount_inr > 50000
ORDER BY amount_inr DESC;
