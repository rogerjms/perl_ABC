use Win32::File;
$File='F:\www\table.php';
Win32::File::GetAttributes($File, $attr) or die;
print "The attribute value returned is: $attr.\n";
if ( $attr ){
	if ($attr & READONLY){
		print "File is readonly.\n";
	}
	if ($attr & ARCHIVE){
		print "File is archive.\n";
	}
	if ($attr & HIDDEN){
		print "File is hidden.\n";
	}
	if ($attr & SYSTEM){
		print "File is a system file.\n";
	}
	if ($attr & COMPRESSED){
		print "File is compressed.\n";
	}
	if ($attr & DIRECTORY){
		print "File is a directory.\n";
	}
	if ($attrib & NORMAL){
		print "File is normal.\n";
	}
	if ($attrib & OFFLINE){
		print "File is normal.\n";
	}
	if ($attrib & TEMPORARY){
		print "File is temporary.\n";
	}
}
else{ 
	print Win32::FormatMessage(Win32::GetLastError),"\n";
}

