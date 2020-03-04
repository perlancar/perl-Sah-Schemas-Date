package Sah::Schema::date::year;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Year number',
    examples => [
        {value=>'', valid=>0},
        {value=>1, valid=>1},
        {value=>2020, valid=>1},
        {value=>1.1, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
