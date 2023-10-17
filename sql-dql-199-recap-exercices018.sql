-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice018.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table applicant une opération scalaire sur le texte (opération scalaire)
--

-- lister les enregistrements de la table CATEGORIES en dénombrant les caractères dans le champ CATEGORYNAME

-- ATTENTION, les opérateurs scalaires permettent de calculer des valeurs en utilisant des opérateurs dédiés sur les champs d'un type s'apparentant au texte
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte


SELECT CATEGORYID,
       CATEGORYNAME,
       LENGTH(CATEGORYNAME) AS "NOMBRE DE CARACTERES",
       DESCRIPTION,
       PICTURE
FROM GSN.OLTP.CATEGORIES
ORDER BY CATEGORYID;