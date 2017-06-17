package Sah::Schema::date::day;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Day of month',
    min     => 1,
    max     => 31,
}, {}];

1;

# ABSTRACT:
