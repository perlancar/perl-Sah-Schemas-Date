package Sah::Schema::date::dow_name::en;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Day-of-week name (abbreviated or full, in English), e.g. "su" or "Monday"',
    in => [
        qw/su mo tu we th fr sa/,
        qw/sun mon tue wed thu fri sat/,
        qw/sunday monday tuesday wednesday thursday friday saturday/,
    ],
    description => <<'_',

See also: <pm:Sah::Schema::date::dow_num>.

See also related schemas for other locales, e.g.
<pm:Sah::Schema::date::dow_name::id> (Indonesian),
<pm:Sah::Schema::date::dow_name::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'su', valid=>1},
        {value=>'mOn', valid=>1},
        {value=>'TUESDAY', valid=>1},
        {value=>'foo', valid=>0, summary=>'Not a day-of-week name'},
    ],
}];

1;

# ABSTRACT:
