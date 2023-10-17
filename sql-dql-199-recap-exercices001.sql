-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice001.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister tous les enregistrements d'une table 
--

-- lister les enregistrements de la tables CUSTOMERS

-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requiête
-- ATTENTION, l'exécution d'une requête requiert la definition d'un contexte

SELECT "CUSTOMERID",
       "COMPANYNAME",
       "CONTACTNAME",
       "CONTACTTITLE",
       "ADDRESS",
       "CITY",
       "REGION",
       "POSTALCODE",
       "COUNTRY",
       "PHONE",
       "FAX"
FROM GSN.OLTP.CUSTOMERS
ORDER BY "CUSTOMERID" ASC ;