-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice004.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table avec tri multiple 
--

-- lister les enregistrements de la table CUSTOMERS trié par ville, contactname et postalcode

-- ATTENTION, toujours lister les champs à inclure dans la requte
-- ATTENTION, toujours spécifier un tri à une requiête
-- ATTENTION, un tri peut spécifier plus d'un champ, ils sont alors séparés par une virgule
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
ORDER BY "CITY", "CONTACTNAME", "POSTALCODE" ASC ;