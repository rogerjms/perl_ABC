use Tk;
    $main=new MainWindow;
    $button1=$main->Button(-text=>'first button',-command=>sub{prninfo
()})->pack(-expand=>'1',-fill=>'x');
    $button2=$main->Button(-text=>'second button',-command=>sub{exit})
->pack(-ipadx=>'1c',-padx=>'1c');
    $button3=$main->Button(-text=>'third button',-command=>sub{rmv()})
->pack(-expand=>'1',-fill=>'x');
    MainLoop;
    sub prninfo{
            @a=$button2->packInfo;
            @b=$main->packSlaves;
            print"@a\n";
            print"@b\n";
    }
   sub rmv{
           $button3->packForget;
   }
