package Sah::Schema::date::month_num;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Month number, coercible from English month names (Dec/DECEMBER)',
    min => 1,
    max => 12,
    'x.perl.coerce_rules' => ['From_str::convert_en_month_name_to_num'],
    'x.completion' => ['date_month_num'],
    description => <<'_',

See also related schemas that coerce from other locales, e.g.
<pm:Sah::Schema::date::month_num::id> (Indonesian),
<pm:Sah::Schema::date::month_num::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>"Empty string"},
        {value=>0, valid=>0, summary=>"Not between 1-12"},
        {value=>1, valid=>1},
        {value=>"JUN", validated_value=>6, valid=>1},
        {value=>12, valid=>1},
        {value=>13, valid=>0, summary=>"Not between 1-12"},
    ],
}];

1;

# ABSTRACT:
