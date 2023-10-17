-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice016.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en calculant le stock total  (opération scalaire)
--

-- lister les enregistrements de la table PRODUCTS en calculant le total du stock actuel et en commande

-- ATTENTION, les opérateurs scalaires permettent de calculer des valeurs en utilisant plus d'un champ d'un même enregistrement
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte

SELECT

       SUM(UNITSINSTOCK) AS "TOTAL STOCK ACTUEL",

       SUM(UNITSONORDER) AS "TOTAL STOCK EN COMMANDE"
FROM GSN.OLTP.PRODUCTS;

