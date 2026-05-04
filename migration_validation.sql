-- Goal: Identify duplicate IDs in the old IBS system 
-- to prevent errors before migrating to PULSE.

SELECT Legacy_ID, COUNT(*) 
FROM IBS_Data_Staging 
GROUP BY Legacy_ID 
HAVING COUNT(*) > 1;