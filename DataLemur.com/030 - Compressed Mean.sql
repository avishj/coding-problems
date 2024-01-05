-- Source: https://archive.is/gAuuC

SELECT
    CAST (
        SUM(ipo.item_count * ipo.order_occurrences) / SUM(ipo.order_occurrences)
        AS DECIMAL(3, 1)
    ) AS mean
FROM
    items_per_order ipo;