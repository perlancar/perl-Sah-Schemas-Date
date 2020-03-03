package Sah::Schema::date::day;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Day of month',
    min     => 1,
    max     => 31,
    examples => [
        {data=>'', valid=>0},
        {data=>1, valid=>1},
        {data=>31, valid=>1},
        {data=>32, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
