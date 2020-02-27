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
}, {}];

1;

# ABSTRACT:
