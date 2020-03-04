package Sah::Schema::date::tz_name;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Timezone name',
    'x.completion' => sub {
        require Complete::TZ;

        my %args = @_;

        Complete::TZ::complete_tz(word => $args{word});
    },
    examples => [
        {value=>'Asia/Jakarta', valid=>1},
    ],
}, {}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Currently no validation for valid timezone names. But completion is provided.
