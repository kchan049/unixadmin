#!/usr/bin/perl

my $logfile = $ARGV[0];
open(my $LOG, "<", $logfile) or die "cannot open" . $logfile;
open(my $LOG, ">", $logfile) or die "cannot open" . $logfile;
my $flag=0;
while( <$LOG>)
{
	$flag = 0;
	for(my $i=1; $i<=$#ARGV; $i++) 
	{
		if($_ =~ /$ARGV[$i]/)
		{
			$flag = 1;
		}
	}
	if($flag == 0)
	{
		print $_;
	}
}
