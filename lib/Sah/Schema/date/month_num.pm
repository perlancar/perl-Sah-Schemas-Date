package Sah::Schema::date::month_num;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Month number',
    min => 1,
    max => 12,
    'x.perl.coerce_rules' => ['From_str::convert_en_month_name_to_num'],
    'x.completion' => ['date_month_num'],
    examples => [
        {value=>'', valid=>0},
        {value=>0, valid=>0},
        {value=>1, valid=>1},
        {value=>12, valid=>1},
        {value=>13, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
