$file="time.pl";

$time = (stat($file))[2];#ʵ���Ϲ�13��
#print "@time\n";
  printf "Permissions are %04o\n", $time & 07777;
  use File::stat;
  $sb = stat($file);
printf "File is %s, size is %s, perm %04o, mtime %s\n",$filename, $sb->size, $sb->mode & 07777,scalar localtime $sb->mtime;