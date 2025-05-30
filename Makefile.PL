# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v6.032.
use strict;
use warnings;

use 5.006002;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Basic utilities for writing tests.",
  "AUTHOR" => "Chad Granum <exodist\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Test-Simple",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.006002",
  "NAME" => "Test::Simple",
  "PREREQ_PM" => {
    "B" => 0,
    "Data::Dumper" => 0,
    "Exporter" => 0,
    "File::Spec" => 0,
    "File::Temp" => 0,
    "Scalar::Util" => "1.13",
    "Storable" => 0,
    "Term::Table" => "0.013",
    "Time::HiRes" => 0,
    "overload" => 0,
    "utf8" => 0
  },
  "VERSION" => "1.302215",
  "test" => {
    "TESTS" => "t/*.t t/Legacy/*.t t/Legacy/Bugs/*.t t/Legacy/Builder/*.t t/Legacy/Regression/*.t t/Legacy/Simple/*.t t/Legacy/Test2/*.t t/Legacy/Tester/*.t t/Legacy/subtest/*.t t/Legacy_And_Test2/*.t t/Test2/acceptance/*.t t/Test2/behavior/*.t t/Test2/legacy/*.t t/Test2/modules/*.t t/Test2/modules/API/*.t t/Test2/modules/API/InterceptResult/*.t t/Test2/modules/Event/*.t t/Test2/modules/Event/TAP/*.t t/Test2/modules/EventFacet/*.t t/Test2/modules/Formatter/*.t t/Test2/modules/Hub/*.t t/Test2/modules/Hub/Interceptor/*.t t/Test2/modules/IPC/*.t t/Test2/modules/IPC/Driver/*.t t/Test2/modules/Tools/*.t t/Test2/modules/Util/*.t t/Test2/regression/*.t t/acceptance/*.t t/behavior/*.t t/modules/*.t t/modules/AsyncSubtest/*.t t/modules/AsyncSubtest/Event/*.t t/modules/Bundle/*.t t/modules/Compare/*.t t/modules/Plugin/*.t t/modules/Require/*.t t/modules/Tools/*.t t/modules/Tools/Test-Refcount/*.t t/modules/Util/*.t t/modules/Util/Table/*.t t/modules/Workflow/*.t t/modules/Workflow/Task/*.t t/regression/*.t"
  }
);


my %FallbackPrereqs = (
  "B" => 0,
  "Data::Dumper" => 0,
  "Exporter" => 0,
  "File::Spec" => 0,
  "File::Temp" => 0,
  "Scalar::Util" => "1.13",
  "Storable" => 0,
  "Term::Table" => "0.013",
  "Time::HiRes" => 0,
  "overload" => 0,
  "utf8" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

$WriteMakefileArgs{INSTALLDIRS} = 'perl'
    if "$]" >= 5.006002 && "$]" <= 5.011000;

WriteMakefile(%WriteMakefileArgs);
