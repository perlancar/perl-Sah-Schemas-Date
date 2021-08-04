package Sah::Schema::date::dow_num;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Day-of-week number (1-7, 1=Monday, like DateTime), coercible from English day-of-week name (Mo/mon/MONDAY)',
    min => 1,
    max => 7,
    'x.perl.coerce_rules' => ['From_str::convert_en_dow_name_to_num'],
    'x.completion' => ['date_dow_num'],
    description => <<'_',

See also related schemas that coerce from other locales, e.g.
<pm:Sah::Schema::date::dow_num::id> (Indonesian),
<pm:Sah::Schema::date::dow_num::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>"Empty string"},
        {value=>0, valid=>0, summary=>"Not in 1-7"},
        {value=>1, valid=>1},
        {value=>"Tue", validated_value=>2, valid=>1},
        {value=>"foo", valid=>0, summary=>'Not a known English day-of-week name'},
        {value=>7, valid=>1},
        {value=>8, valid=>0, summary=>"Not in 1-7"},
    ],
}];

1;

# ABSTRACT:
