$a="<body>guixiaokeguixiaoke</body>";
$a=~s#<body>(.*)</body>#$1#;
print $a;