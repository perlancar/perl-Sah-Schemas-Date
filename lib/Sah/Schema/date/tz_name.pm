package Sah::Schema::date::tz_name;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Timezone name, e.g. Asia/Jakarta',
    description => <<'_',

Currently no validation for valid timezone names. But completion is provided.

_
    'x.completion' => sub {
        require Complete::TZ;

        my %args = @_;

        Complete::TZ::complete_tz(word => $args{word});
    },
    examples => [
        {value=>'Asia/Jakarta', valid=>1},
    ],
}];

1;

# ABSTRACT:
