package Sah::Schema::date::month_nums;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['array' => {
    summary => 'Array of required month numbers (1-12, with coercions)',
    of => ['date::month_num', {req=>1}],
    'x.perl.coerce_rules' => ['From_str::comma_sep'],
    'x.completion' => ['date_month_num'],
    description => <<'_',

See also related schemas that coerce from other locales, e.g.
<pm:Sah::Schema::date::month_nums::id> (Indonesian),
<pm:Sah::Schema::date::month_nums::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>1, validated_value=>[]},
        {value=>0, valid=>0, summary=>'Has number not in 1-12'},
        {value=>1, valid=>1, validated_value=>[1]},
        {value=>[1], valid=>1},
        {value=>[1,12], valid=>1},
        {value=>[1,undef], valid=>0, summary=>'Contains undef'},
        {value=>["Jan","JUN"], validated_value=>[1,6], valid=>1},
        {value=>'January,JUNE', valid=>1, validated_value=>[1,6]},
        {value=>[1,12,13], valid=>0, summary=>'Has number not in 1-12'},
        {value=>'1,12,13', valid=>0, summary=>'Has number not in 1-12'},
    ],
}];

1;

# ABSTRACT:
