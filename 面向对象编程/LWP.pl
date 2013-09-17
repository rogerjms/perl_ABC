my $url = 'http://www.baidu.com';
use LWP::Simple;  
my $content = get $url;  
die "Couldn't get $url" unless defined $content;  #  $content 里是网页内容，下面是对此内容作些分析：  
if($content =~ m/baidu/i) {    
print "They're talking about jazz today on Fresh Air!\n";  
} else {    
print "Fresh Air is apparently jazzless today.\n";  
}