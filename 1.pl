#!/usr/bin/env perl
# <p>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.</p>
# <p>Find the sum of all the multiples of 3 or 5 below 1000.</p>

use strict;
use warnings;
use List::Util 'sum';

if (!@ARGV) {
  print "No arguments given\n";
  exit 1;
}
print sum grep {!($_ % 3 && $_ % 5)} (1..$ARGV[0]-1);
