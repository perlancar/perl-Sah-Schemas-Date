package Sah::Schema::date::dow_nums;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['array' => {
    summary => 'Array of day-of-week numbers (1-7, 1=Monday)',
    of => ['date::dow_num', {}, {}],
    'x.perl.coerce_rules' => ['From_str::comma_sep'],
    'x.completion' => ['date_dow_nums'],
    examples => [
        {data=>'', valid=>1},
        {data=>1, valid=>1},
        {data=>[1], valid=>1},
        {data=>[1,7], valid=>1},
        {data=>'1,7', valid=>1},
        {data=>[1,7,8], valid=>0},
        {data=>'1,7,8', valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
