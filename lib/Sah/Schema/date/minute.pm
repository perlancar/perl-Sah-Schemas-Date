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
        {value=>'', valid=>0},
        {value=>0, valid=>1},
        {value=>59, valid=>1},
        {value=>60, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
