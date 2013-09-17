open(MA,"matr");
while (<MA>) {
@row = split;
push(@array, [ @row ]);
}
print "@array";