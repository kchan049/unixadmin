#!/usr/bin/perl

use List::Util 'sum';
my $blockcount=0;
my %ip_count;
my %from;
my %two;
my $logfile="log4";
open(my $LOG, "<", $logfile) or die "cannot open" . $logfile;

while(<$LOG>)
{
	if ($_ =~ /blocked using dnsbl\.sorbs\.net/)
	{
		$blockcount++;
	}
}
print $blockcount. " messages rejected\n";
close($LOG);
open($LOG, "<", $logfile);
while(<$LOG>)
{
	if ($_ =~ /\[(\S+\.\S+\.\S+\.\S+)\]/)
	{
		my $ip = $1;
		if( !exists $ip_count{$ip})
		{
			$ip_count{$ip}++;
		}
	}
}
$ip_sum = sum values %ip_count;
print $ip_sum . " unique IP's\n";
close($LOG);
open($LOG, "<", $logfile);
while(<$LOG>)
{
	if ($_ =~ /from\=\<(\S+)\>/)
	{
		my $email = $1;
		if( !exists $from{$email})
		{
			$from{$email}++;
		}
	}
	if ($_ =~ /to\=\<(\S+)\>/)
	{
		my $email1 = $1;
		if( !exists $to{$email1})
		{
			$to{$email1}++;
		}
	}
	
}
$tosum = sum values %to;
$fromsum = sum values %from;
print $fromsum . " unique from addresses\n";
print $tosum . " unique to addresses\n";
close($LOG);
