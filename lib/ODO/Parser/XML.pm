#
# Copyright (c) 2006 IBM Corporation.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# File:        $Source: /var/lib/cvs/ODO/lib/ODO/Parser/XML.pm,v $
# Created by:  Stephen Evanchik( <a href="mailto:evanchik@us.ibm.com">evanchik@us.ibm.com </a>)
# Created on:  10/01/2006
# Revision:	$Id: XML.pm,v 1.4 2009-11-25 17:54:26 ubuntu Exp $
# 
# Contributors:
#     IBM Corporation - initial API and implementation
#
package ODO::Parser::XML;

use strict;
use warnings;

use ODO::Exception;

use Module::Load::Conditional qw/can_load/;
use vars qw /$VERSION/;
$VERSION = sprintf "%d.%02d", q$Revision: 1.4 $ =~ /: (\d+)\.(\d+)/;
use base qw/ODO::Parser/;

our $_BACKEND = 'ODO::Parser::XML::Slow';


use Class::Interfaces('ODO::Parser::XML'=> 
	{
		'isa'=> 'ODO::Parser',
		'methods'=> [ 'parse_rdf' ],
	}
  );

=head1 NAME

ODO::Parser::XML - Parser for statements serialized to RDF/XML 

=head1 SYNOPSIS

 use ODO::Parser::XML;
 
 my $statements = ODO::Parser::XML->parse_file('some/path/to/data.rdfxml');
 
 my $rdf = ' ... rdf xml here ... ';
 my $other_statements = ODO::Parser::XML->parse(\$rdf);
 
=head1 DESCRIPTION

RDF/XML parser that implements the L<ODO::Parser> interface.

=head1 METHODS

=over

=item parse( )

=cut

sub parse {
	my ($self, $rdf, %parameters) = @_;

	$self = $self->SUPER::new(%parameters)
		unless(ref $self);
	my ($statements, $imports) = $self->parse_rdf($rdf); 
	return ($statements, $imports);
}


=item parse_file( )

=cut

sub parse_file {
	my ($self, $filename, %parameters) = @_;

	throw ODO::Exception::File::Missing(error=> "Could not locate file: $filename")
		unless(-e $filename);

	$self = $self->SUPER::new(%parameters)
		unless(ref $self);
	
	open(RDF_FILE, $filename);
	my ($statements, $imports) = $self->parse_rdf(\*RDF_FILE);
	close(RDF_FILE);
	
	return ($statements, $imports);
}


sub init {
	my ($self, $config) = @_;
	my $parser_backend = $config->{'backend'} || $_BACKEND;
	
	delete $config->{'backend'};
	
	my $backend_loaded = can_load( modules => {$parser_backend=> undef } );
	
	throw ODO::Exception::Module(error=> "Could not load RDF/XML parser: '$parser_backend'\n==> $@")
		if(!defined($backend_loaded) && UNIVERSAL::can($parser_backend, 'new'));
	
	my $rdf_xml_parser = $parser_backend->new(%{ $config });
	return $rdf_xml_parser;
}


sub import {
	my ($package, %options) = @_;
	$_BACKEND = $options{'backend'}
		if(exists($options{'backend'}));
}


=back

=head1 COPYRIGHT

Copyright (c) 2006 IBM Corporation.

All rights reserved. This program and the accompanying materials
are made available under the terms of the Eclipse Public License v1.0
which accompanies this distribution, and is available at
http://www.eclipse.org/legal/epl-v10.html

=cut

1;

__END__
