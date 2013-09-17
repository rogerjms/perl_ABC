use strict;
    use Tk;
    my $main = new MainWindow;
    $main->Label(-text => 'Hello, world!')->pack;
    $main->Button(-text => 'Quit',
                  -command => sub{exit}
                  )->pack;
    MainLoop;
