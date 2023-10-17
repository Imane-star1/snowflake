-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice003.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table triés 
--

-- lister les enregistrements de la table CUSTOMERS triés par ville

-- ATTENTION, toujours lister les champs à inclure dans la requete
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
ORDER BY "CITY" ASC ;