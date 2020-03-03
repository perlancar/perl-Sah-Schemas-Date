package Sah::Schema::date::tz_offset_lax;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['date::tz_offset' => {
    summary => 'Timezone offset in seconds from UTC',
    'merge.delete.in' => [],
    min => -12*3600,
    max => +14*3600,
    description => <<'_',

This schema allows timezone offsets that are not known to exist, e.g. 1 second
(+00:00:01). If you only want ot allow timezone offsets that are known to exist,
see the `date::tz_offset` schema.

A coercion from these form of string is provided:

    UTC

    UTC-14 or UTC+12 or UTC+12:45 or UTC-00:25:21
    -14 or +12, -1400 or +12:00

A coercion from timezone name is also provided.

_
    examples => [
        {data=>'', valid=>0},
        {data=>'UTC', valid=>1, res=>0},
        {data=>'3600', valid=>1, res=>3600},
        {data=>'-43200', valid=>1, res=>-43200},
        {data=>'-12', valid=>1, res=>-12*3600},
        {data=>'-1200', valid=>1, res=>-12*3600},
        {data=>'-12:00', valid=>1, res=>-12*3600},
        {data=>'UTC-12', valid=>1, res=>-12*3600},
        {data=>'UTC-1200', valid=>1, res=>-12*3600},
        {data=>'UTC+12:45', valid=>1, res=>+12.75*3600},
        {data=>'UTC-13', valid=>0},
        {data=>'UTC+12:01', valid=>1, res=>+(12*3600+60)},
    ],
}, {}];

1;

# ABSTRACT:
