-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice005.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en renommant les colonnes 
--

-- lister les enregistrements de la table CUSTOMERS en renommant les colonnes retenues par des termes français

-- ATTENTION, utiliser l'alias pour creer une liste d'enregistrement compréhensible par l'utilisateur final
-- ATTENTION, les guillemets sont nécessaire pour les appelations de plus d'un terme ou avec accent
-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requiête
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte

SELECT "CUSTOMERID" AS "CID",
       "CONTACTNAME" AS "NOM DU CONTACT",
       "ADDRESS" AS "ADRESSE",
       "CITY" AS "VILLE",
       "REGION" AS "RÉGION",
       "POSTALCODE" AS "CODE POSTAL",
       "COUNTRY" AS "PAYS",
       "PHONE" AS "TELEPHONE"
FROM GSN.OLTP.CUSTOMERS
ORDER BY "CID" ASC ;