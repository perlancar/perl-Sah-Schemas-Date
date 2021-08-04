package Sah::Schema::date::month::en;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Month number/name (abbreviated or full, in English)',
    in => [
        1..12,
        qw/jan feb mar apr may jun jul aug sep oct nov dec/,
        qw/january february march april june july august september october november december/,
    ],
    description => <<'_',

Note that name is not coerced to number; use
<pm:Sah::Schema::date::month_num::id> for that.

See also related schemas for other locales, e.g.
<pm:Sah::Schema::date::month::id> (Indonesian),
<pm:Sah::Schema::date::month::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>1, valid=>1},
        {value=>'jan', valid=>1},
        {value=>'FeB', valid=>1},
        {value=>'March', valid=>1},
        {value=>'foo', valid=>0, summary=>'Not a month name/number'},
        {value=>13, valid=>0, summary=>'Number not in 1-12'},
    ],
}];

1;

# ABSTRACT:
