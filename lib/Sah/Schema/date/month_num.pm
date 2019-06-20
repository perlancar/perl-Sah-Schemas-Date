package Sah::Schema::date::month_num;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Month number',
    min => 1,
    max => 12,
    'x.perl.coerce_rules' => ['str_convert_en_month_name_to_num'],
}, {}];

1;

# ABSTRACT:
