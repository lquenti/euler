#!/usr/bin/env perl
#<p>The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.</p>
#<p>Find the sum of all the primes below two million.</p>

use strict;
use warnings;
use List::Util qw(none sum);
use POSIX 'ceil';

sub sieve {
  my $n = shift;
  my $upper = ceil(sqrt($n));
  my @arr = (2..$n);
  for my $i (2..$upper) {
    next unless defined($arr[$i]);
    for (my $j = 2*$i; $j <= $n; $j += $i) {
      $arr[$j] = undef;
    }
  }
  my $sum = 0;
  for (2..$n) {
    $sum += $_ if defined($arr[$_]);
  }
  return $sum;
}

my $res = sieve(2000000);
print "$res\n";
