-- Rank country origins by the number of fans from metal bands file
-- origin first then fans_number last
SELECT origin, SUM(fans) AS fans_number
FROM metal_bands
GROUP BY origin
ORDER BY fans_number DESC;
