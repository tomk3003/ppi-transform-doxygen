use strict;
use warnings;

use Test::More;
use FindBin qw($Bin);

BEGIN {
    push @INC, "$Bin/../lib";
    for my $mod ('PPI', 'PPI::Transform::Doxygen') {
        use_ok($mod, "load $mod") or BAIL_OUT("cannot load $mod");
    }
};

my $tr = new_ok('PPI::Transform::Doxygen');

open(my $out, '>', \my $buf);

$tr->file($0 => $out);

like($buf, qr/DESCRIPTION/);

done_testing();

__END__

=pod

=head1 DESCRIPTION

Basic POD for first test

=head2 a_function()

Docs for a_function()

=cut