use ExtUtils::MakeMaker;
use Config;

my $CCFLAGS = join(' ',$Config{ccflags},'-x c++');

WriteMakefile(
    NAME         => 'CppStat',
    VERSION_FROM => 'CppStat.pm',
    TYPEMAPS     => ['perlobject.map'],
    LIBS         => ['-lstdc++'],
    CCFLAGS      => $CCFLAGS,
);
