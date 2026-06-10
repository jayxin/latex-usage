# xelatex
$pdf_mode = 5;
$xelatex = "xelatex -shell-escape -file-line-error -halt-on-error -synctex=1 -no-pdf -interaction=batchmode %O %S";
$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glsdefs glg glo gls idx ilg ind ist lof log lot out run.xml toc dvi xdv";

# when using bibtex, uncomment
#$bibtex_use = 2;

$preview_mode = 0;
$pdf_update_method = 0;

#my $tl_build_dir = $ENV{'TL_BUILD_DIR'} // '.';
unless (exists $ENV{'TL_BUILD_DIR'} && $ENV{'TL_BUILD_DIR'} ne '') {
  $ENV{'TL_BUILD_DIR'} = $ENV{'PWD'};
}
my $tl_build_dir = $ENV{'TL_BUILD_DIR'};
$out_dir = "$tl_build_dir";
$aux_dir = "$tl_build_dir";
