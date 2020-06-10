#!/usr/bin/env perl
# <p>The sum of the squares of the first ten natural numbers is,</p>
# $$1^2 + 2^2 + ... + 10^2 = 385$$
# <p>The square of the sum of the first ten natural numbers is,</p>
# $$(1 + 2 + ... + 10)^2 = 55^2 = 3025$$
# <p>Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is $3025 - 385 = 2640$.</p>
# <p>Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.</p>

use strict;
use warnings;

sub kleiner_gauss_squared {
  my $n = shift;
  my $val = ($n*$n+$n)/2;
  return $val * $val;
}

sub square_sum {
  my $n = shift;
  return ($n*($n+1)*(2*$n+1))/6;
}

my $hehe = kleiner_gauss_squared(100) - square_sum(100);
print "$hehe\n";
