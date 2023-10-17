-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice002.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements pertinent d'une table
--

-- lister les enregistrements de la tables CUSTOMER en éliminant companyname et contacttitle et fax

-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, le dernier champs dans la requête ne doit pas être suivi d'une virgule
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
ORDER BY "CUSTOMERID" ASC ;