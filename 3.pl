#!/usr/bin/env perl
# <p>The prime factors of 13195 are 5, 7, 13 and 29.</p>
# <p>What is the largest prime factor of the number 600851475143 ?</p>

# Something Something the largest prime factor of N is smaller than sqrt(N)
# Consult your local introductory math book for more informations.

use strict;
use warnings;
use List::Util 'any';
use POSIX 'floor';

if (!@ARGV) {
  print "No arguments given\n";
  exit 1;
}
my $n = $ARGV[0];
my $max_val = floor(sqrt($n));

sub max_prime {
  my ($n, $max) = (shift, 0);
  foreach (2..floor(sqrt($n))) {
    until ($n % $_) {
      $max = $_;
      $n = $n / $_;
    }
  }
  return $max;
}
print max_prime $ARGV[0];
