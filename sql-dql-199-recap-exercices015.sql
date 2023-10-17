-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice015.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en filtrant sur plage de valeurs de dates 
--

-- lister les enregistrements de la table ORDERS dont la date de demandée est entre mai 2016 et octobre 2016

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, les opérateurs IN et BETWEEN permettent de spécifier des plages de valeurs
-- ATTENTION, l'exécution d'une requête requiert la definition d'un contexte


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
WHERE ORDERDATE BETWEEN '2016-05-01' AND '2016-10-01'
ORDER BY ORDERID;
