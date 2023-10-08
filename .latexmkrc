$pdf_mode = 5;
$dvi_mode = 0;
$postscript_mode = 0;
$out_dir = 'build';


sub asy {
  return system("asy -o '$_[0].pdf' '$_[0]'");
}
add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","tex",0,"asy");