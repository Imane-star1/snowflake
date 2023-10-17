-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice011.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table utilisant plusieurs filtres (2) 
--

-- lister les enregistrements de la table PRODUCTS dont le prix unitaire est moins de 100$ et il y a plus de 10 unités en stock

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, les opérateurs AND et OR permettent de combiner plusieurs conditions
-- ATTENTION, les parenthèses permettent de prioriser l'application des conditions
-- ATTENTION, l'opérateur LIKE permet d'utiliser des patrons simples à partir de frimes, "%" désigne plusieurs caractères, "_" désigne un seul caractère
-- ATTENTION, l'opérateur NOT permet d'inverser le sens de la sélection
-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requiête
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte


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
WHERE UNITPRICE < 100 AND UNITSINSTOCK > 10
ORDER BY PRODUCTID;