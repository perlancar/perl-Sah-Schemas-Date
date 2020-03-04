package Sah::Schema::date::month_name::en;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Month name (abbreviated or full, in English)',
    in => [
        qw/jan feb mar apr may jun jul aug sep oct nov dec/,
        qw/january february march april june july august september october november december/,
    ],
    examples => [
        {value=>'', valid=>0},
        {value=>1, valid=>0},
        {value=>'jan', valid=>1},
        {value=>'FeB', valid=>1},
        {value=>'March', valid=>1},
        {value=>'foo', valid=>0},
        {value=>13, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
