sub log_base {
    my ($base, $value) = @_;
    return log($value)/log($base);
}
print log_base(2,4);