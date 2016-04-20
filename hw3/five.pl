#!/usr/bin/perl

my $logfile = shift(@ARGV);
open(FILE,"<" ,  $logfile) or die "cannot open" . $logfile;
my @LINES = <FILE>;
close(FILE);
open(FILE, ">", $logfile) or die "cannot open" . $logfile;
my $flag=0;
foreach my $LINE( @LINES)
{
	$flag = 0;
	foreach my $match (@ARGV)
	{
		if($LINE =~ /$match/)
		{
			$flag = 1;
		}
	}
	if($flag == 0)
	{
		print  FILE $LINE;
	}
}

close(FILE);
