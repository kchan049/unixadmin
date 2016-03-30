#!/usr/bin/perl 
#usage perl cat.pl filename
FILE: foreach (@ARGV){
	open(FILE, $_) or die "can't open file $_ \n";
	while(<FILE>) {
		print;
	}
	close(FILE);
}
