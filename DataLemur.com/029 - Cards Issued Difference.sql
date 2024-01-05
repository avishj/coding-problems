-- Source: https://archive.is/4YJzm

SELECT
    mci.card_name,
    MAX(mci.issued_amount) - MIN(mci.issued_amount) AS difference
FROM 
    monthly_cards_issued mci
GROUP BY
    mci.card_name
ORDER BY
    MAX(mci.issued_amount) - MIN(mci.issued_amount) DESC;