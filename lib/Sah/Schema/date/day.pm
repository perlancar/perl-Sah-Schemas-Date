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
        {value=>'', valid=>0},
        {value=>1, valid=>1},
        {value=>31, valid=>1},
        {value=>32, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
