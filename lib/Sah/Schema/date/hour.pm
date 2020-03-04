package Sah::Schema::date::hour;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Hour of day',
    min     => 0,
    max     => 23,
    examples => [
        {value=>'', valid=>0},
        {value=>0, valid=>1},
        {value=>23, valid=>1},
        {value=>24, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
