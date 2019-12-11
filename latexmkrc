$latex = 'uplatex -shell-escape';
$bibtex = 'upbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$pdf_mode = 3; 
$hash_calc_ignore_pattern{'pdf'} = '^   /CreationDate ';