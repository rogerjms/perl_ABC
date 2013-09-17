print "Please enter the filename you want create:\n";
chomp ($module=<STDIN>);
$module.=".pl";
print "The file ".$module." have been created!";
open MODULE,">$module";

print MODULE "#!/usr/bin/perl -w\n";
print MODULE  "use strict;";
print MODULE "\n"."#programmed by guixiaoke at"."\n"."#".scalar (localtime),"\n"x20;
print MODULE <<'FINIS';
###########################################################
#####################
# Subroutines
###########################################################
#####################
sub open_file{
	my ($name)=@_;
	my $fh;
unless(open($fh,$name)){
print "i can not open $name!\n";
  exit;}
  return $fh;
  }
sub main
{
    message("This is the template.pl exercise file from Perl 5 Essential Training.");
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print("$0: $e\n");
    exit 0;
}
FINIS
print MODULE  "exit;";

close MODULE;
system("C:\\Program Files\\IDM Computer Solutions\\UltraEdit-32\\Uedit32.exe","$module");
exit;
