package Sah::Schema::date::dow_name::en;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Day-of-week name (abbreviated or full, in English)',
    in => [
        qw/su mo tu we th fr sa/,
        qw/sun mon tue wed thu fri sat/,
        qw/sunday monday tuesday wednesday thursday friday saturday/,
    ],
    examples => [
        {data=>'', valid=>0},
        {data=>'su', valid=>1},
        {data=>'mOn', valid=>1},
        {data=>'TUESDAY', valid=>1},
        {data=>'foo', valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
