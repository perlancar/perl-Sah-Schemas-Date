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
        {value=>'', valid=>1},
        {value=>0, valid=>0},
        {value=>1, valid=>1},
        {value=>[1], valid=>1},
        {value=>[1,12], valid=>1},
        {value=>'1,12', valid=>1},
        {value=>[1,12,13], valid=>0},
        {value=>'1,12,13', valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
