package Sah::Schema::date::tz_offset;

# AUTHORITY
# DATE
# DIST
# VERSION

BEGIN {

    # taken from Wikipedia page: https://en.wikipedia.org/wiki/UTC%2B14:00 on Feb 27, 2020
our @TZ_STRING_OFFSETS = qw(
    -12:00 -11:00 -10:30 -10:00 -09:30 -09:00 -08:30 -08:00 -07:00
    -06:00 -05:00 -04:30 -04:00 -03:30 -03:00 -02:30 -02:00 -01:00 -00:44 -00:25:21
    -00:00 +00:00 +00:20 +00:30 +01:00 +01:24 +01:30 +02:00 +02:30 +03:00 +03:30 +04:00 +04:30 +04:51 +05:00 +05:30 +05:40 +05:45
    +06:00 +06:30 +07:00 +07:20 +07:30 +08:00 +08:30 +08:45 +09:00 +09:30 +09:45 +10:00 +10:30 +11:00 +11:30
    +12:00 +12:45 +13:00 +13:45 +14:00
);

our @TZ_INT_OFFSETS;
for (@TZ_STRING_OFFSETS) {
    /^([+-])(\d\d):(\d\d)(?::(\d\d))?$/
        or die "Unrecognized tz offset string: $_";
    push @TZ_INT_OFFSETS, ($1 eq '-' ? -1:1) * ($2*3600 + $3*60 + ($4 ? $4 : 0));
}

#use DD; dd \@TZ_INT_OFFSETS;

} # BEGIN

our $schema = [int => {
    summary => 'Timezone offset in seconds from UTC',
    in => \@TZ_INT_OFFSETS,
    description => <<'_',

Only timezone offsets that are known to exist are allowed. For example, 1 second
(+00:00:01) is not allowed. See `date::tz_offset_lax` for a more relaxed
validation.

A coercion from these form of string is provided:

    UTC

    UTC-14 or UTC+12 or UTC+12:45 or UTC-00:25:21
    -14 or +12, -1400 or +12:00

A coercion from timezone name is also provided.

_
    'x.perl.coerce_rules' => ['From_str::tz_offset_strings'],
    'x.completion' => sub {
        require Complete::TZ;
        require Complete::Util;

        my %args = @_;

        Complete::Util::combine_answers(
            Complete::TZ::complete_tz_offset(word => $args{word}),
            Complete::TZ::complete_tz_name(word => $args{word}),
        );
    },
    examples => [
        {value=>'', valid=>0},
        {value=>'UTC', valid=>1, validated_value=>0},
        {value=>'3600', valid=>1, validated_value=>3600},
        {value=>'-43200', valid=>1, validated_value=>-43200},
        {value=>'-12', valid=>1, validated_value=>-12*3600},
        {value=>'-1200', valid=>1, validated_value=>-12*3600},
        {value=>'-12:00', valid=>1, validated_value=>-12*3600},
        {value=>'UTC-12', valid=>1, validated_value=>-12*3600},
        {value=>'UTC-1200', valid=>1, validated_value=>-12*3600},
        {value=>'UTC+12:45', valid=>1, validated_value=>+12.75*3600},
        {value=>'UTC-13', valid=>0},
        {value=>'UTC+12:01', valid=>0, summary=>'Unknown offset'},
    ],
}, {}];

1;

# ABSTRACT:
