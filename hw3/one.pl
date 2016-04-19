#!/usr/bin/perl
open(FILE, $ARGV[0]);
$post="reject";
$amavis="amavis";
my $postcount=0;
my $acount=0;
while(<FILE>){
	chomp;
	($h, $m, $s) = split("\:");
	#print "$m\n";
	($month, $numb, $user, $dir, $num, $blah,$stat )=split("\ ");
	#print $stat;
	print "$month $numb";
	#for(my $i=0; $i<60; $i++)
	#{
	#	print "$month";
	#	while($i=$m)
	#	{
	#		if(index($stat,$post) != -1 )
	#		{
	#			$postcount++;
	#		}
	#	}
	#	print "$postcount\n";
	#}
}
