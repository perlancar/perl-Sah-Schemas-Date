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
        {data=>'', valid=>0},
        {data=>0, valid=>1},
        {data=>23, valid=>1},
        {data=>24, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
