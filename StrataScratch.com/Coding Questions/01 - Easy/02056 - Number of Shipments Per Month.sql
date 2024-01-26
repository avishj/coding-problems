-- Source: https://web.archive.org/web/20240120234433/https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=5

WITH
    UniqueShipments AS (
        SELECT DISTINCT
            amsh.[shipment_id],
            amsh.[sub_id],
            amsh.[shipment_date]
        FROM
            amazon_shipment amsh
    )
SELECT
    CONCAT(DATEPART(YEAR, us.[shipment_date]), '-', DATEPART(MONTH, us.[shipment_date])) AS [year_month],
    COUNT(*) AS [shipment_count]
FROM
    UniqueShipments us
GROUP BY
    CONCAT(DATEPART(YEAR, us.[shipment_date]), '-', DATEPART(MONTH, us.[shipment_date]));