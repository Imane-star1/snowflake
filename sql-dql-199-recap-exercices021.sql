-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice021.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en combinant un ensemble d'opérateurs 
--

-- Définissez votre propre requête incluant au moins 4 conditions, c'est le moment d'explorer les fonctionnalités du langage SQL

-- ATTENTION, les operateurs scalaires permettent de calculer des valeurs en combinant des opérateurs dédiés sur les champs d'un type s'apparentant à la date
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte

SELECT ORDERID,
       CUSTOMERID,
       EMPLOYEEID,
       ORDERDATE,
       REQUIREDDATE,
       SHIPPEDDATE,
       SHIPVIA,
       FREIGHT,
       SHIPNAME,
       SHIPADDRESS,
       SHIPCITY,
       SHIPREGION,
       SHIPPOSTALCODE,
       SHIPCOUNTRY
FROM GSN.OLTP.ORDERS
WHERE (SHIPREGION = 'Quebec' AND SHIPCITY NOT LIKE '%Daly%'
           AND (SHIPVIA IN (61,35, 56, 23, 30, 20)
    OR SHIPPEDDATE BETWEEN '2016' AND '2017'));