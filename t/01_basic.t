use strict;
use warnings;

use Test::More;

BEGIN {
    for my $mod ('PPI', 'PPI::Transform::Doxygen') {
        use_ok($mod, "load $mod") or BAIL_OUT("cannot load $mod");
    }
};

my $tr = new_ok('PPI::Transform::Doxygen');

done_testing();
