use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Text::Phonetic::Phonet',
    'VERSION_FROM'	=> 'Phonet.pm', # finds $VERSION
    'PREREQ_PM'		=> {Text::Phonetic => 2.03, ccom => 1.4}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ? (
      ABSTRACT_FROM => 'Phonet.pm', 
      AUTHOR     => 'Stefan Gipper <stefanos@cpan.org>',
    ) : ()),
);
