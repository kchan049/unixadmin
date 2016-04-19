#!/usr/bin/env perl
use strict;
use warnings;

#my $logfile = $ARGV[0];
my $logfile = "maillog.txt";

open (my $LOG, "<", $logfile) or die "can't open " . $logfile;
open (my $INFO, ">", "hourlyInfo") or die "can't open hourlyInfo";

my $time;
my $prev_time = "o_o";
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
			print $INFO $prev_time . "[postfix rejects:" . 
				$rejects . "] [amavis quarantines:" .
				$quarantines . "]\n";
			$rejects = 0;
			$quarantines = 0;
		}
		$prev_time = $time;
	}
}
close $LOG;
close $INFO;
