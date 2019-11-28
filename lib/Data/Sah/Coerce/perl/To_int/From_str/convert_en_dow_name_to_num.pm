package Data::Sah::Coerce::perl::To_int::From_str::convert_en_dow_name_to_num;

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
        summary => 'Convert English day-of-week name (e.g. su, MON, Tuesday) to number (1-7, 1=Monday)',
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
        "  mo=>1, mon=>1, monday=>1, ",
        "  tu=>2, tue=>2, tuesday=>2, ",
        "  we=>3, wed=>3, wednesday=>3, ",
        "  th=>4, thu=>4, thursday=>4, ",
        "  fr=>5, fri=>5, friday=>5, ",
        "  sa=>6, sat=>6, saturday=>6, ",
        "  su=>7, sun=>7, sunday=>7, ",
        "}; ",
        "\$$pkg\::dow_nums->{lc $dt} || $dt; ",
        "}",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

This rule can convert English day-of-week names like:

 su
 MON
 Tuesday

to corresponding day-of-week numbers (i.e. 7, 1, 2 in the examples above).
Unrecognized strings will just be passed as-is.
