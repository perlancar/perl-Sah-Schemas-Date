package Sah::Schema::date::minute;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Minute of hour (0-59), e.g. 30',
    min     => 0,
    max     => 59,
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>0, valid=>1},
        {value=>59, valid=>1},
        {value=>60, valid=>0, summary=>'Not in 0-59'},
    ],
}];

1;

# ABSTRACT:
