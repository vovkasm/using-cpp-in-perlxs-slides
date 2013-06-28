use ExtUtils::MakeMaker;
use ExtUtils::CppGuess;

my $guess = ExtUtils::CppGuess->new;

WriteMakefile(
    NAME         => 'CppStat',
    VERSION_FROM => 'CppStat.pm',
    TYPEMAPS     => ['perlobject.map'],
    CONFIGURE_REQUIRES => {
        'ExtUtils::CppGuess' => 0,
    },
    $guess->makemaker_options,
);
