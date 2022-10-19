package Sah::Schema::date::month_name::en;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Month name (abbreviated or full, in English), e.g. "jan" or "September"',
    in => [
        qw/jan feb mar apr may jun jul aug sep oct nov dec/,
        qw/january february march april june july august september october november december/,
    ],
    description => <<'_',

See also: <pm:Sah::Schema::date::month_num>.

See also related schemas for other locales, e.g.
<pm:Sah::Schema::date::month_name::id> (Indonesian),
<pm:Sah::Schema::date::month_name::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>1, valid=>0, summary=>'Not month name'},
        {value=>'jan', valid=>1},
        {value=>'FeB', valid=>1},
        {value=>'March', valid=>1},
        {value=>'foo', valid=>0, summary=>'Unknown month name'},
        {value=>13, valid=>0, summary=>'Not month name'},
    ],
}];

1;

# ABSTRACT:
