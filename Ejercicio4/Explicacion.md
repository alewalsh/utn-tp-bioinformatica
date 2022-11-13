Ejercicio 4 – BLAST OUTPUT. Escribir un script para analizar (parsear) un reporte de salida de blast que identifique los hits que en su descripción 
aparezca un Pattern determinado que le damos como parámetro de entrada. El pattern puede ser una palabra. Punto extra: pueden a su vez parsear cuál 
es el ACCESSION del hit identificado (donde hay una coincidencia del Pattern) y con el módulo Bio::DB::GenBank obtener la secuencia completa del hit 
en formato FASTA y escribirla a un archivo, es decir, levantar las secuencias originales completas de los hits seleccionados.
− Input: Reporte Blast (blast.out del ej. 2) y un Pattern (por ej. “Mus Musculus”).
− Output: Lista de los hits que coincidan con el pattern (por ej. solo los hits de Ratones).
Deben entregar el script Ex4.pm y su input file con una breve descripción.

Primero obtenemos un archivo BLAST como input del ejercicio que se levanta el archivo mediante SearchIO.
Luego, se hace un recorrido por los resultados para encontrar aquellos que contengan el patrón (o pattern) pasado como parámetro en la descripción.

El script se ejecuta por consola y este sería el formato de ejecución: perl Ex4.pm archivoBLAST patron

