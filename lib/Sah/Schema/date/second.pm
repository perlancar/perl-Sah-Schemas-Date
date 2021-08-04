package Sah::Schema::date::second;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Second of minute (0-60)',
    min     => 0,
    max     => 60,
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>0, valid=>1},
        {value=>59, valid=>1},
        {value=>60, valid=>1},
        {value=>61, valid=>0, summary=>'Not in 0-60'},
    ],
}];

1;

# ABSTRACT:
