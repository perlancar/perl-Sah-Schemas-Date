package Sah::Schema::date::dow_name::en;

# DATE
# VERSION

our $schema = [cistr => {
    summary => 'Day-of-week name (abbreviated or full, in English)',
    in => [
        qw/su mo tu we th fr sa/,
        qw/sun mon tue wed thu fri sat/,
        qw/sunday monday tuesday wednesday thursday friday saturday/,
    ],
}, {}];

1;

# ABSTRACT:
