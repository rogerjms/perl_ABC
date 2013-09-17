opendir (AA, "E:\perl");

@w=grep(!/^\.\.?$/,readdir AA);

close AA;

print @w;














