package Sah::Schema::date::dow_nums;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['array' => {
    summary => 'Array of required date::dow_num (day-of-week, 1-7, 1=Monday, like DateTime, with coercions), e.g. [1,3,5]',
    of => ['date::dow_num', {req=>1}],
    'x.perl.coerce_rules' => ['From_str::comma_sep'],
    'x.completion' => ['date_dow_nums'],
    description => <<'_',

See also <pm:Sah::Schema::date::dow_num> which is the schema for the elements.

See also related schemas that coerce from other locales, e.g.
<pm:Sah::Schema::date::dow_nums::id> (Indonesian),
<pm:Sah::Schema::date::dow_num::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>1, validated_value=>[]},
        {value=>1, valid=>1, validated_value=>[1]},
        {value=>[1], valid=>1},
        {value=>[1,undef], valid=>0, summary=>'Contains undef'},
        {value=>[1,7], valid=>1},
        {value=>'1,7', valid=>1, validated_value=>[1,7]},
        {value=>["Mon","SunDAY"], valid=>1, validated_value=>[1,7]},
        {value=>'Mo,SU', valid=>1, validated_value=>[1,7]},
        {value=>[1,7,8], valid=>0, summary=>'Has number not in 1-7'},
        {value=>'1,7,8', valid=>0, summary=>'Has number not in 1-7'},
    ],
}];

1;

# ABSTRACT:
