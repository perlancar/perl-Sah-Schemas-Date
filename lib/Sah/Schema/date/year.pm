package Sah::Schema::date::year;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Year number',
    examples => [
        {data=>'', valid=>0},
        {data=>1, valid=>1},
        {data=>2020, valid=>1},
        {data=>1.1, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
