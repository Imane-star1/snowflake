-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice008.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table utilisant un filtre simple inversé 
--

-- lister les enregistrements de la table CUSTOMERS dont la ville n'est pas Lang

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, l'inversion d'une valeur se fait au moyen du mot clé NOT, il existe parfois des opérateurs incluant directement la négation
-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requiête
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
WHERE NOT "CITY" = 'Lang'
ORDER BY "CUSTOMERID" ASC;