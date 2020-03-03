package Sah::Schema::date::month::en;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Month number/name (abbreviated or full, in English)',
    in => [
        1..12,
        qw/jan feb mar apr may jun jul aug sep oct nov dec/,
        qw/january february march april june july august september october november december/,
    ],
    examples => [
        {data=>'', valid=>0},
        {data=>1, valid=>1},
        {data=>'jan', valid=>1},
        {data=>'FeB', valid=>1},
        {data=>'March', valid=>1},
        {data=>'foo', valid=>0},
        {data=>13, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
