	# $Id: Makefile.PL,v 1.12 2009-11-24 19:38:15 ubuntu Exp $
	# Load the Module::Install bundled in ./inc/
	use inc::Module::Install;
	use 5.006;

	# Define metadata
	name 'PLUTO';
	author 'IBM';
	license 'eclipse';
    version '0.22';
	
	all_from 'lib/ODO.pm';

	# Specific dependencies
	requires 'Error'                     => '0.17';
	requires 'Exception::Class'          => '1.22';
	requires 'Exception::Class::DBI'     => '0.94';
	requires 'Class::ISA'                => '0.32';
	requires 'Class::Accessor'           => '0.25';
	requires 'Class::Base'               => '0.02';
	requires 'Class::Interfaces'         => '0.04';
	requires 'Class::ParamParser'        => '1.041';
	requires 'Aspect'                    => '0.10';
	requires 'URI'                       => '1.35';
	requires 'XML::SAX'                  => '0.96';
	requires 'XML::RegExp'               => '0.03';
	requires 'XML::Namespace'            => '0.02';
	requires 'Time::HiRes'               => '1.20';
	requires 'SQL::Library'              => '0.0.3';
	requires 'Digest::MD5'               => '2.34';
	requires 'Module::Load::Conditional' => '0.08';
	requires 'Module::Load'              => '0.10';
	requires 'Params::Check'             => '0.23';
	requires 'Parse::RecDescent'         => '1.93';
	requires 'Template'                  => '2.15';
	requires 'DBD::mysql'                => '4';
	
	no_index directory => 'examples';
	
	auto_install;
    WriteAll;
