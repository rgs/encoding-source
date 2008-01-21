#!perl

use 5.009005;
use strict;
use ExtUtils::MakeMaker;

if (ord("A") == 193) {
    die "This module does not support EBCDIC platforms.\n";
}

WriteMakefile(
    NAME	    => 'encoding::source',
    VERSION_FROM    => 'lib/encoding/source.pm',
    PREREQ_PM	    => { Encode => 0 },
);
