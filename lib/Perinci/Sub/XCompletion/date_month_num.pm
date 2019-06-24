package Perinci::Sub::XCompletion::date_month_num;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Complete::Util qw(complete_array_elem);

our %SPEC;

$SPEC{gen_completion} = {
    v => 1.1,
};
sub gen_completion {
    my %fargs = @_;

    sub {
        my %cargs = @_;

        complete_array_elem(
            array => [
                1..12,
                "jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec",
                "january","february","march","april","may","june","july","august","september","october","november","december",
            ],
            word => $cargs{word},
        );
    };
}

1;
# ABSTRACT: Generate completion for date::month_num

=head1 CONFIGURATION


=head1 SEE ALSO

L<Sah::Schema::date::month_num>

=cut
