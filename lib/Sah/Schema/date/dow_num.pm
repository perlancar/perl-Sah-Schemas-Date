package Sah::Schema::date::dow_num;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Day-of-week number (1-7, 1=Monday)',
    min => 1,
    max => 7,
    'x.perl.coerce_rules' => ['From_str::convert_en_dow_name_to_num'],
    'x.completion' => ['date_dow_num'],
}, {}];

1;

# ABSTRACT:
