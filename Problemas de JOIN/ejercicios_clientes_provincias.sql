/*
 1) Una empresa tiene registrados a sus clientes en una tabla llamada clientes. 
 También tiene una tabla "provincias" donde registra los nombres de las provincias.
*/

--¿Qué provincias no tenemos clientes?
SELECT prov.codigo, prov.nombre FROM provincias AS prov
LEFT JOIN clientes AS cli 
ON cli.codigoProvincia=prov.codigo 
WHERE cli.codigoProvincia IS NULL;

--¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia. Un tip, vas a necesitar la sentencia distinct
SELECT DISTINCT prov.codigo, prov.nombre FROM provincias AS prov
LEFT JOIN clientes AS cli
ON cli.codigoProvincia=prov.codigo
WHERE cli.codigoProvincia;