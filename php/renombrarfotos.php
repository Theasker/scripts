#!/usr/bin/php
<?php
/* Script que hace una busqueda recursiva de fotos y videos de 
un directorio pasado como primer argumento y si es una foto jpg
la renombra según el patron configurado en el script segun los datos exif
de la misma y si es un video lo renombra segun el patron configurado 
por su fecha de creacion*/

if ($argc != 2 || in_array($argv[1], array('--help', '-help', '-h', '-?'))) {
?>

Éste es un script PHP de línea de comandos con un parámetro.

  Uso:
  <?php echo $argv[0]; ?> <parámetro>

  <parámetro> puede ser alguna palabra que desee
  mostrar en pantalla. Con las opciones --help, -help, -h,
  o -?, puede mostrarse esta ayuda.

<?php
} else {
    echo $argv[1];
}
?>
