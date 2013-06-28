use Test::More;
use CppStat;

my $stat = CppStat->new;
$stat->add(5);
$stat->add(10);
$stat->add(6);

is $stat->avg, 7;

done_testing;
