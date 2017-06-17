package Sah::Schema::date::second;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Second of minute',
    min     => 0,
    max     => 60,
}, {}];

1;

# ABSTRACT:
