package Sah::Schema::date::second;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Second of minute',
    min     => 0,
    max     => 60,
    examples => [
        {data=>'', valid=>0},
        {data=>0, valid=>1},
        {data=>59, valid=>1},
        {data=>60, valid=>1},
        {data=>61, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
