use ExtUtils::MakeMaker;

my $CC = 'g++';

WriteMakefile(
    NAME         => 'CppStat',
    VERSION_FROM => 'CppStat.pm',
    TYPEMAPS     => ['perlobject.map'],
    CC => $CC,
    LD => $CC,
);
