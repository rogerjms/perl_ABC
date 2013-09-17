# 2011-5-4

open (RS, ">331_genome_list");

@opr = glob('331_opr/*');	

print RS "@opr\n";