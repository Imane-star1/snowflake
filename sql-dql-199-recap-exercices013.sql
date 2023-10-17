-- 
-- projet : Synthèse des compétences de base au langage SQL 
-- fichier : sql-dql-199-recap-exercice013.sql
-- auteur : Daniel Chamberland-Tremblay
-- serveur : glkktvb-dl83564.snowflakecomputing.com (SnowFlake)
-- bd : GSN.OLTP
-- objectif : lister les enregistrements d'une table en filtrant sur plage de valeurs textuelle 
--

-- lister les enregistrements de la table CUSTOMERS dont la ville est Fort Smith, Langford, Cantley ou Price

-- ATTENTION, lopérateur WHERE pour filtrer
-- ATTENTION, les opérateurs IN et BETWEEN permettent de spécifier des plages de valeurs
-- ATTENTION, l'exécution d'une requête requiert la définition d'un contexte


SELECT "CUSTOMERID",
       "CONTACTNAME",
       "ADDRESS",
       "CITY",
       "REGION",
       "POSTALCODE",
       "COUNTRY",
       "PHONE"
FROM GSN.OLTP.CUSTOMERS
WHERE CITY IN ( 'Fort Smith', 'Langford', 'Cantley', 'Price')
ORDER BY "CUSTOMERID" ASC;
