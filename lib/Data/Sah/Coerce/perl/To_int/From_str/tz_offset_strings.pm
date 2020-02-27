package Data::Sah::Coerce::perl::To_int::From_str::tz_offset_strings;

# AUTHOR
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 4,
        summary => 'Convert timezone offset strings like UTC-500, UTC, or UTC+12:30 to number of offset seconds from UTC',
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    #                                               #1=sgn #2=hour           #3=min       #4=sec
    $res->{expr_match} = "$dt =~ /\\A(?:UTC|GMT)(?: ([+-]) (\\d\\d?)(?: (?::?(\\d\\d)(?:: (\\d\\d) )?)?)?)?\\z/x";
    $res->{expr_coerce} = join(
        "",
        "do { ",

        "\$1 ? ((\$1 eq '-' ? -1:1)*(\$2*3600 + (\$3 ? \$3*60:0) + (\$4 ? \$4:0))) : 0",

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

    
