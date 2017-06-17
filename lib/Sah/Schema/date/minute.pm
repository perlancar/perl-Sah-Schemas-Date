package Sah::Schema::date::minute;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Minute of hour',
    min     => 0,
    max     => 59,
}, {}];

1;

# ABSTRACT:
