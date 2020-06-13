#!/usr/bin/env perl
# <p>A Pythagorean triplet is a set of three natural numbers, <var>a</var> &lt; <var>b</var> &lt; <var>c</var>, for which,</p>
# <div style="text-align:center;"> <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup></div>
# <p>For example, 3<sup>2</sup> + 4<sup>2</sup> = 9 + 16 = 25 = 5<sup>2</sup>.</p>
# <p>There exists exactly one Pythagorean triplet for which <var>a</var> + <var>b</var> + <var>c</var> = 1000.<br />Find the product <var>abc</var>.</p>

use strict;
use warnings;

# The naive maximum is obviously smaller than c being 1000
# Since (+) is commutative, this loop should be enough!
for my $a (1..1000) {
  INNER: for my $b ($a..1000) {
    my $c = sqrt($a*$a+$b*$b);
    my $res = $a + $b + $c;
    if ($res == 1000) {
      my $abc = $a*$b*$c;
      print "$abc\n";
      exit 0;
    } elsif ($res > 1000) {
      last INNER;
    }
  }
}
