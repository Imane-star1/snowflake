-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice012.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table utilisant plusieurs filtres (3) 
--

-- lister les enregistrements de la table CATEGORIES qui sont des accessoires sans les éléments de pêche ou de chasse

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, les opérateurs AND et OR permettent de combiner plusieurs conditions
-- ATTENTION, les parenthèses permettent de prioriser l'application des conditions
-- ATTENTION, l'opérateur REGEXP_LIKE permet d'utiliser des patrons complexe à partir de frimes étendues. La complexité des REGEXP nécessite la consultation de la documentation
-- ATTENTION, l'opérateur LIKE permet d'utiliser des patrons simples à partir de frimes, "%" désigne plusieurs caractères, "_" désigne un seul caractère
-- ATTENTION, l'opérateur NOT permet d'inverser le sens de la sélection
-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requête
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte


SELECT CATEGORYID,
       CATEGORYNAME,
       DESCRIPTION,
       PICTURE
FROM GSN.OLTP.CATEGORIES
WHERE (CATEGORYNAME LIKE 'accessoires%' AND
       DESCRIPTION NOT LIKE ('peche' OR 'chasse'));