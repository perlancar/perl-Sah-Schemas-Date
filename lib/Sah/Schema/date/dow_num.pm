package Sah::Schema::date::dow_num;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Day-of-week number (1-7, 1=Monday)',
    min => 1,
    max => 7,
    'x.perl.coerce_rules' => ['From_str::convert_en_dow_name_to_num'],
    'x.completion' => ['date_dow_num'],
    examples => [
        {value=>'', valid=>0},
        {value=>0, valid=>0},
        {value=>1, valid=>1},
        {value=>7, valid=>1},
        {value=>8, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
