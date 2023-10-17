-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice017.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en standardisant la casse (opération scalaire) 
--

-- lister les enregistrements de la table CATEGORIES en convertissant la description en majuscule

-- ATTENTION, les opérateurs scalaires permettent de calculer des valeurs en utilisant des opérateurs dédiés sur les champs d'un type s'apparentant au texte
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte

SELECT CATEGORYID,
       CATEGORYNAME,
       UPPER(DESCRIPTION) AS "DESCRIPTION",
       PICTURE
FROM GSN.OLTP.CATEGORIES
ORDER BY  CATEGORYID;