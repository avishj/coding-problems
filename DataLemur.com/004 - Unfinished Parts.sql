-- Source: https://archive.is/XRuYe

SELECT 
    pa.part, 
    pa.assembly_step 
FROM 
    parts_assembly pa 
WHERE 
    pa.finish_date IS NULL;