-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice006.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table utilisant un filtre simple 
--

-- lister les enregistrements de la table CUSTOMERS dont la ville est Whitehorse

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requiête
-- ATTENTION, l'exécution d'une requête requiert la definition d'un contexte

SELECT "CUSTOMERID",
       "CONTACTNAME",
       "ADDRESS",
       "CITY",
       "REGION",
       "POSTALCODE",
       "COUNTRY",
       "PHONE"
FROM GSN.OLTP.CUSTOMERS
WHERE "CITY" = 'Whitehorse'
ORDER BY "CUSTOMERID" ASC;