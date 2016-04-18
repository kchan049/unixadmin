#!/bin/perl

open(FILE, $ARGV[0]);

while(<FILE>){
	@line = $_;
	printf("line %2d: %s", $c++, $line);
}
