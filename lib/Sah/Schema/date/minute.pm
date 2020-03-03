package Sah::Schema::date::minute;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Minute of hour',
    min     => 0,
    max     => 59,
    examples => [
        {data=>'', valid=>0},
        {data=>0, valid=>1},
        {data=>59, valid=>1},
        {data=>60, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
