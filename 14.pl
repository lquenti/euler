#!/usr/bin/env perl
# <p>The following iterative sequence is defined for the set of positive integers:</p>
# <p style="margin-left:50px;"><var>n</var> → <var>n</var>/2 (<var>n</var> is even)<br /><var>n</var> → 3<var>n</var> + 1 (<var>n</var> is odd)</p>
# <p>Using the rule above and starting with 13, we generate the following sequence:</p>
# <div style="text-align:center;">13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1</div>
# <p>It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.</p>
# <p>Which starting number, under one million, produces the longest chain?</p>
# <p class="note"><b>NOTE:</b> Once the chain starts the terms are allowed to go above one million.</p>

# naive memoization is slow af and complex one makes the code more ugly

use strict;
use warnings;

sub c {
  my $n = shift;
  return ($n % 2) ? 3*$n+1 : $n/2
}
my $res = 0;
my $rescnt = 0;
for (2..1000000-1) {
  my $curr = $_;
  my $count = 0;
  while ($curr != 1) {
    $curr = c($curr);
    $count++;
  }
  if ($count > $rescnt) {
    $rescnt = $count;
    $res = $_;
  }
}
print "$res\n";
