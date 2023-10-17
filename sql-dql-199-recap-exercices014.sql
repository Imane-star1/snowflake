-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice014.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en filtrant sur plage de valeurs numérique 
--

-- lister les enregistrements de la table PRODUCTS pour lesquels les prix sont entre 100$ et 200$

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, les opérateurs IN et BETWEEN permettent de spécifier des plages de valeurs
-- ATTENTION, l'exécution d'une requete requiert la définition d'un contexte

SELECT PRODUCTID,
       PRODUCTNAME,
       SUPPLIERID,
       CATEGORYID,
       QUANTITYPERUNIT,
       UNITPRICE,
       UNITSINSTOCK,
       UNITSONORDER,
       REORDERLEVEL,
       DISCONTINUED
FROM GSN.OLTP.PRODUCTS
WHERE UNITPRICE BETWEEN 100 AND 200
ORDER BY PRODUCTID;