-- Rank country origins by the number of fans from metal bands file
-- origin first then fans_number last
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
