use TK;
my $main=new MainWindow();
my $label=$main->Label();
my $button=$main->Button();
$label->configure(-text=>'Look at me.');
$button->configure(-text=>'Exit',-command=>\&destroy);
$label->pack();
$button->pack();

$main->MainLoop();

sub destroy
{
	$main->destroy();
}