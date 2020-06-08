#!/usr/bin/env perl
# <p>A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.</p>
# <p>Find the largest palindrome made from the product of two 3-digit numbers.</p>

use strict;
use warnings;

my @arr = sort { $a <=> $b } grep {$_ =~ m/^((.)(?1)\2|.?)$/} map {my $x = $_; map { ($x * $_)} (100..1000)} (100..1000);
print pop @arr;
