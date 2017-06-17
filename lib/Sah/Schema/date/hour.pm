package Sah::Schema::date::hour;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Hour of day',
    min     => 0,
    max     => 23,
}, {}];

1;

# ABSTRACT:
