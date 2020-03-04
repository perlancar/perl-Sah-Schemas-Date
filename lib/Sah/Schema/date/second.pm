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
        {value=>'', valid=>0},
        {value=>0, valid=>1},
        {value=>59, valid=>1},
        {value=>60, valid=>1},
        {value=>61, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
