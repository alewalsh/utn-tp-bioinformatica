Ejercicio 2.a - BLAST. Escribir un script que realice un BLAST de una o varias secuencias (si son varias se realiza un Blast por cada secuencia input) y escriba el resultado (blast output) en un archivo. 
Nota: Pueden ejecutar BLAST de manera remota o bien localmente (si hacen ambos tienen más puntos!), para esto deben instalarse BLAST localmente del FTP del NCBI, luego bajarse la base de 
datos ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz y descomprimirla en un dir por ej. ncbi-blast-2.3.0+/data/, luego usar el comando ncbi-blast-2.3.0+/bin/makeblastdb sobre el archivo swissprot 
(el original ya está en formato FASTA) para darle formato de BLAST DB. Dependiendo de la versión de Blast suite que tengan instalado puede que en vez de makeblastdb deban utilizar el comando formatdb.
− Input: Secuencia Fasta (ej. Xxxx.fas con una o más secuencias de aminoácidos obtenidas en Ej.1).
− Output: Reporte Blast (ej. blast.out, si deciden hacer múltiples pueden generar un único o varios archivos).
Deben entregar el script Ex2.pm y su input file con una breve descripción de lo que hicieron, con una interpretación de los resultados del Blast, y mencionar como se debe ejecutar para probarlo.

Ejercicio 2.b – Interpretación del resultado del Blast. Dar una explicación del resultado blast obtenido en términos de las secuencias encontradas y dar una explicación sobre que significan los valores 
estadísticos asociados a las secuencias encontradas (el capítulo 4 del libro de David Mount puede ayudarlos).


Se realizó el script Ex2.pm para realizar una ejecución local donde utiliza el archivo result.fas generado en el ejercicio 1 como base y genera un resultado localReport.bls. Se enfocó en la secuencia 3, y el análisis de
los resultados se realiza en el archivo intepretación.md

Para la ejecución del script, se debe descargar la database "swissprot" como se indica en el archivo configInicial.md y tener una secuencia FASTA en un archivo con nombre result.fas y luego en la consola realizar: perl Ex2.pm
