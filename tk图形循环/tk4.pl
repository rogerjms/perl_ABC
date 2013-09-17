#!/usr/local/bin/perl -w
use Tk;

my $mw = MainWindow->new;

use strict;

use Tk::widgets qw(Photo Animation);

my $file = (@ARGV) ? shift : Tk->findINC('anim.gif');

my $img = $mw->Animation('-format' => 'gif',-file => $file);

my $lab = $mw->Label(-image => $img);

my $start = $mw->Button(-text => 'Start', -command => ['start_animation' => $img]);
my $stop  = $mw->Button(-text => 'Stop', -command => ['stop_animation' => $img]);
my $quit  = $mw->Button(-text => 'Quit', -command => [destroy => $mw]);
Tk::grid($lab,'-','-',-sticky => 'nsew');
Tk::grid($start, $stop, $quit,-sticky => 'ew');
$mw->gridRowconfigure(0,-weight => 1);
MainLoop;