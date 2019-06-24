package Perinci::Sub::XCompletion::date_dow_nums;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Complete::Util qw(complete_comma_sep);

our %SPEC;

$SPEC{gen_completion} = {
    v => 1.1,
};
sub gen_completion {
    my %fargs = @_;

    sub {
        my %cargs = @_;

        complete_comma_sep(
            elems => [
                1..7,
                "mo","tu","we","th","fr","sa","su",
                "mon","tue","wed","thu","fri","sat","sun",
                "monday","tuesday","wednesday","thursday","friday","saturday","sunday",
            ],
            word => $cargs{word},
        );
    };
}

1;
# ABSTRACT: Generate completion for date::dow_nums

=head1 CONFIGURATION


=head1 SEE ALSO

L<Sah::Schema::date::dow_nums>

=cut
