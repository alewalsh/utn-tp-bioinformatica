Ejercicio 1 – PROCESAMIENTO DE SECUENCIAS. Escribir un script que lea una o más secuencias (de
nucleótidos) de un archivo que contenga la información en formato GenBank de un mRNA de su gen (o
genes) de interés, las traduzca a sus secuencias de amino ácidos posibles (tener en cuenta los Reading
Frames) y escriba los resultados en un archivo en formato FASTA. Ustedes deben generarse su archivo
GenBank de secuencias input, por ejemplo realizando una consulta de los mRNA del gen INS (que está
asociado a la Diabetes) en la base de datos de NCBI-Gene y obtener uno o más resultados en formato
GenBank en un archivo de texto. Si no desean seguir trabajando con las seis secuencias de aa posibles,
pueden utilizar alguna función o programa que les permita saber cual el es marco de lectura correcto y
seguir con esa secuencia.
NOTA: Ver aclaración de este ejercicio al final del documento.
− Input: Archivo de secuencias Genbank (ej. NMxxxx.gbk con una o más secuencias).
− Output: Archivo de secuencias Fasta de cada ORF (ej. Xxxxx.fas con una o más secuencias de
aminoácidos).
Deben entregar el script Ex1.pm (si lo hacen con BioPerl, sino será otra extensión) y el input file que utilicen
con una breve descripción de lo que hicieron y como se debe ejecutar para probarlo.

Se realizó una búsqueda en la página del NCBI para buscar el gen de la psoriasis, el gen en cuestión es el PSORS1. Sin embargo, investigamos ambos candidatos y concluimos que lo mejor sería continuar el TP con el 2. 
Se procedio a descargar la secuencia de nucleotidos en formato `Genbank` (https://www.ncbi.nlm.nih.gov/nuccore/NM_014069.3).
Luego, realizamos un script en Perl para procesar el archivo. Por este motivo, implementamos la biblioteca BioPerl.
El script, lee la secuencia de nucleotidos en los 4 marcos posibles y los traduce en secuencias de aminoacidos, 1 correspondientes a la direccion original y las otras 3 correspondientes a la direccion del reverso complementario.
Para determinar el marco de lectura correcto se utilizo ORFFinder (https://www.ncbi.nlm.nih.gov/orffinder/) y obtener el real.

Para ejecutar el script, primero hay que iniciar una terminal y posicionarse en la carpeta del archivo Ex1.pm y luego ingresar el siguiente comando:
```
    perl Ex1.pm sequence.gb
```
Input esperado: archivo genbank.
Output: secuencia.fas