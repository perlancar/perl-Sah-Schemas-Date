package Sah::Schema::date::month_nums;

# DATE
# VERSION

our $schema = ['array' => {
    summary => 'Array of month numbers',
    of => ['date::month_num', {}, {}],
    'x.perl.coerce_rules' => ['str_comma_sep'],
    'x.completion' => ['date_month_num'],
}, {}];

1;

# ABSTRACT:
