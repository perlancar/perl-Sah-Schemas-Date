package Sah::Schema::date::day;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Day of month (1-31), e.g. 17',
    min     => 1,
    max     => 31,
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>1, valid=>1},
        {value=>31, valid=>1},
        {value=>32, valid=>0, summary=>'Not between 1-31'},
    ],
}];

1;

# ABSTRACT:
