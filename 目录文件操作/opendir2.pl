my $dir="c:\\Program Files";
opendir(LISTDI,"$dir")||die;
#@filelist=<LISTDIR>;
foreach $file (readdir LISTDI ){
print $dir,"\\",$file,"\n";
}