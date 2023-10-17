-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice020.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en calculant la période entre deux dates (opération scalaire) 
--

-- lister les enregistrements de la table ORDER_DETAILS en calculant le nombre de jours entre la date demandée et la date envoyée

-- ATTENTION, les opérateurs scalaires permettent de calculer des valeurs en combinant des opérateurs dédiés sur les champs d'un type s'apparentant à la date
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte

SELECT ORDERID,
       CUSTOMERID,
       EMPLOYEEID,
       ORDERDATE,
       REQUIREDDATE,
       SHIPPEDDATE,
       DATEDIFF(DAY, REQUIREDDATE, SHIPPEDDATE) AS "NOMBRE DE JOURS",
       SHIPVIA,
       FREIGHT,
       SHIPNAME,
       SHIPADDRESS,
       SHIPCITY,
       SHIPREGION,
       SHIPPOSTALCODE,
       SHIPCOUNTRY
FROM GSN.OLTP.ORDERS;
;