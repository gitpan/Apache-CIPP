# $Id: Makefile.PL,v 1.1.1.1 1999/10/01 10:49:03 joern Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	=> 'Apache::CIPP',
    'VERSION_FROM' => 'CIPP.pm',
    'PREREQ_PM' => {
    		'CIPP' => 2.0,
		'Apache' => 0
		},
    'dist' => {
	PREOP => 'pod2text CIPP.pm > README',
        COMPRESS => "gzip",
        SUFFIX => "gz"
    }
);
