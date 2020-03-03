package Sah::Schema::date::month_nums;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['array' => {
    summary => 'Array of month numbers',
    of => ['date::month_num', {}, {}],
    'x.perl.coerce_rules' => ['From_str::comma_sep'],
    'x.completion' => ['date_month_num'],
    examples => [
        {data=>'', valid=>1},
        {data=>0, valid=>0},
        {data=>1, valid=>1},
        {data=>[1], valid=>1},
        {data=>[1,12], valid=>1},
        {data=>'1,12', valid=>1},
        {data=>[1,12,13], valid=>0},
        {data=>'1,12,13', valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
