DELETE FROM features 
WHERE feature = ( SELECT DISTINCT feature
FROM features  LEFT JOIN newBuilding ON features.buildNumber = newBuilding.buildNumber
WHERE feature = (SELECT feature
                 FROM (SELECT feature, COUNT(features.feature) featAmt
                       FROM features
                       LEFT JOIN newBuilding ON features.buildNumber = newBuilding.buildNumber
                       WHERE newBuilding.buildNumber IS NOT NULL
                       GROUP BY  feature)
                 WHERE featAMT = (SELECT MAX(featAMT) FROM
                 (SELECT feature, COUNT(features.feature) featAmt
                  FROM features
                  LEFT JOIN newBuilding ON features.buildNumber = newBuilding.buildNumber
                  WHERE newBuilding.buildNumber IS NOT NULL
                  GROUP BY  feature)
                  )
                  GROUP BY feature) AND newBuilding.buildNumber IS NOT NULL)
AND features.buildNumber IN(
    SELECT  features.buildNumber
    FROM features  LEFT JOIN newBuilding ON features.buildNumber = newBuilding.buildNumber
    WHERE feature = (SELECT feature
                    FROM (SELECT feature, COUNT(features.feature) featAmt
                    FROM features
                    LEFT JOIN newBuilding ON features.buildNumber = newBuilding.buildNumber
                    WHERE newBuilding.buildNumber IS NOT NULL
                    GROUP BY  feature)
                    WHERE featAMT = (SELECT MAX(featAMT) FROM
                        (SELECT feature, COUNT(features.feature) featAmt
                         FROM features
                         LEFT JOIN newBuilding ON features.buildNumber = newBuilding.buildNumber
                         WHERE newBuilding.buildNumber IS NOT NULL
                         GROUP BY  feature)
                         )
                         GROUP BY feature) AND newBuilding.buildNumber IS NOT NULL);