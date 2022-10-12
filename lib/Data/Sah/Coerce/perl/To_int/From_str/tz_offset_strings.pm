package Data::Sah::Coerce::perl::To_int::From_str::tz_offset_strings;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    +{
        v => 4,
        summary => 'Convert timezone offset strings like UTC-500, UTC, or UTC+12:30 to number of offset seconds from UTC',
        might_fail => 1,
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    #                                #1=label      #2=sgn #3=hour           #4=min       #5=sec
    $res->{expr_match} = "$dt =~ /\\A(UTC|GMT)?(?: ([+-]) (\\d\\d?)(?: (?::?(\\d\\d)(?:: (\\d\\d) )?)?)?)?\\z/x";
    $res->{expr_coerce} = join(
        "",
        "do { ",

        "!\$1 && !\$2 ? ['Cannot be empty', $dt] : [undef, \$2 ? ((\$2 eq '-' ? -1:1)*(\$3*3600 + (\$4 ? \$4*60:0) + (\$5 ? \$5:0))) : 0]",

        "}", # do
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

This rule coerces time zone offsets like:

 UTC
 UTC+7
 UTC+700
 UTC-0700
 UTC+07:00

respectively to number of offset seconds from UTC:

 0
 25200
 25200
 -25200
 25200
