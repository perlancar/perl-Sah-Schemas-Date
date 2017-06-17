package Sah::Schema::date::month_name::en;

# DATE
# VERSION

our $schema = [cistr => {
    summary => 'Month name (abbreviated or full, in English)',
    in => [
        qw/jan feb mar apr may jun jul aug sep oct nov dec/,
        qw/january february march april june july august september october november december/,
    ],
}, {}];

1;

# ABSTRACT:
