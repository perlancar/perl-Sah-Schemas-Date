package Sah::Schema::date::month_num;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Month number',
    min => 1,
    max => 12,
}, {}];

1;

# ABSTRACT:
