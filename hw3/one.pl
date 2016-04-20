#!/usr/bin/env perl
use strict;
use warnings;

my $logfile = $ARGV[0];

open (my $LOG, "<", $logfile) or die "can't open " . $logfile;
open (my $INFO, ">", "hourlyInfo") or die "can't open hourlyInfo";

my $time;
my $prev_time = "o.o";
my $rejects = 0;
my $quarantines = 0;
while (my $line = <$LOG>) {
	if ($line =~ /^(.*?):(\S+):/) {
		my $hour = $1;
		my $minute = $2;
		$time = $hour . ":" . $minute;
		if ($time eq $prev_time) {
			if (index($line, "reject") != -1) {
				++$rejects;

			}
			if (index($line, "quarantine") != -1) {
				++$quarantines;
			}
		}
		else {
			if ($prev_time ne "o.o")
			{
				print $INFO $prev_time . "[postfix rejects:" . 
				$rejects . "] [amavis quarantines:" .
				$quarantines . "]\n";
			}
			$rejects = 0;
			$quarantines = 0;
		}
		$prev_time = $time;
	}
}
	print $INFO $prev_time . "[postfix rejects:" . 
				$rejects . "] [amavis quarantines:" .
				$quarantines . "]\n";

close $LOG;
close $INFO;
