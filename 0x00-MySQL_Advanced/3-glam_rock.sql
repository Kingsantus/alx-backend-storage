-- List all Glam rock bands
-- using split and form instead of curdate
SELECT
    band_name,
    CASE
        WHEN split IS NOT NULL THEN split - formed
        ELSE 2022 - formed
    END AS lifespan
FROM
    metal_bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;
