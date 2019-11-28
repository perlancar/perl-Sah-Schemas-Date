package Sah::Schema::date::dow_nums;

# DATE
# VERSION

our $schema = ['array' => {
    summary => 'Array of day-of-week numbers (1-7, 1=Monday)',
    of => ['date::dow_num', {}, {}],
    'x.perl.coerce_rules' => ['From_str::comma_sep'],
    'x.completion' => ['date_dow_nums'],
}, {}];

1;

# ABSTRACT:
