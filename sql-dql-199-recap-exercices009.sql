-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice009.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table utilisant un filtre simple inversé avec la valeur NULL 
--

-- lister les enregistrements de la table SHIPPERS dont le téléphone n'est pas NULL

-- ATTENTION, l'opérateur WHERE pour filtrer
-- ATTENTION, la valeur NULL est une valeur valide en SQL et indique l'absence de valeur, ce n'est pas la même chose qu'une valeur vide "" ou un simple espace " "
-- ATTENTION, l'inversion d'une valeur se fait au moyen du mot clé NOT
-- ATTENTION, toujours lister les champs à inclure dans la requête
-- ATTENTION, toujours spécifier un tri à une requête
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte


SELECT SHIPPERID,
       COMPANYNAME,
       PHONE
FROM GSN.OLTP.SHIPPERS
WHERE PHONE IS NOT NULL
ORDER BY "COMPANYNAME";