package Sah::Schema::date::year;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    min => 1,
    summary => 'Year number (AD, starting from 1), e.g. 2022',
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>0, valid=>0, summary=>'There is no AD 0; AD starts from 1'},
        {value=>1, valid=>1},
        {value=>2021, valid=>1},
        {value=>10000, valid=>1},
       {value=>1.1, valid=>0, summary=>'Not an integer'},
    ],
}];

1;

# ABSTRACT:
