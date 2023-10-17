-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice010.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table utilisant plusieurs filtres (1) 
--

-- lister les enregistrements de la tables CUSTOMERS dont l'adresse est débute par CP et la ville n'est pas Rimouski

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, les opérateurs AND et OR permettent de combiner plusieurs conditions
-- ATTENTION, les parenthèses permettent de prioriser l'application des conditions
-- ATTENTION, l'opérateur LIKE permet d'utiliser des patrons simples à partir de frimes, "%" désigne plusieurs caractères, "_" désigne un seul caractère
-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requête
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte


SELECT "CUSTOMERID",
       "CONTACTNAME",
       "ADDRESS",
       "CITY",
       "REGION",
       "POSTALCODE",
       "COUNTRY",
       "PHONE"
FROM GSN.OLTP.CUSTOMERS
WHERE "ADDRESS" LIKE 'CP%' AND CITY NOT LIKE 'Rimouski'
ORDER BY "CUSTOMERID" ASC;