-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice019.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en extrayant une partie de texte (opération scalaire) 
--

-- lister les enregistrements de la table CUSTOMER en séparant les noms et prénoms à partir du permier espace rencontré

-- ATTENTION, les opérateurs scalaires permettent de calculer des valeurs en combinant des opérateurs dédiés sur les champs d'un type s'apparentant au texte
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte

SELECT CUSTOMERID,
       SUBSTRING(CONTACTNAME,1, CHARINDEX(' ', CONTACTNAME)) AS "NOM",
       SUBSTRING(CONTACTNAME, CHARINDEX(' ', CONTACTNAME)+1) AS "PRENOM",
       ADDRESS,
       CITY,
       REGION,
       POSTALCODE,
       COUNTRY,
       PHONE,
       FAX
FROM GSN.OLTP.CUSTOMERS
ORDER BY "NOM" ASC;