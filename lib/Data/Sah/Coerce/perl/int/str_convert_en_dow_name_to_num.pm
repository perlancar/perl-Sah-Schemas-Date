package Data::Sah::Coerce::perl::int::str_convert_en_dow_name_to_num;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 4,
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};
    my $pkg = __PACKAGE__;

    $res->{expr_match} = "!ref($dt)";
    $res->{expr_coerce} = join(
        "",
        "do { ",

        # since this is a small translation table we put it inline, but for
        # larger translation table we should move it to a separate perl module
        "\$$pkg\::dow_nums ||= {",
        "  su=>1, sun=>1, sunday=>1, ",
        "  mo=>2, mon=>2, monday=>2, ",
        "  tu=>3, tue=>3, tuesday=>3, ",
        "  we=>4, wed=>4, wednesday=>4, ",
        "  th=>5, thu=>5, thursday=>5, ",
        "  fr=>6, fri=>6, friday=>6, ",
        "  sa=>7, sat=>7, saturday=>7, ",
        "}; ",
        "\$$pkg\::dow_nums->{lc $dt} || $dt; ",
        "}",
    );

    $res;
}

1;
# ABSTRACT: Convert English day-of-week name (e.g. su, MON, Tuesday) to number (1-7, 1=Sunday)

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

This rule can convert English day-of-week names like:

 su
 MON
 Tuesday

to corresponding day-of-week numbers (i.e. 1, 2, 3 in the examples above).
Unrecognized strings will just be passed as-is.
