#!/usr/bin/env perl
# <p>2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.</p>
# <p>What is the smallest positive number that is <dfn title="divisible with no remainder">evenly divisible</dfn> by all of the numbers from 1 to 20?</p>

# I sinned and googeled. We use the prime factorisation to get the LCM (TIL)

# See my cpp solution for more insight

use strict;
use warnings;

my @primes = (1,2,2,2,2,3,3,5,7,11,13,17,19);

my $res = 1;
foreach (@primes) {
  $res *= $_;
}
print "$res\n";
