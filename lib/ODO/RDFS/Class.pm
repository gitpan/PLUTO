package ODO::RDFS::Class;

use strict;
use warnings;

use vars qw( @ISA );
use vars qw /$VERSION/;
$VERSION = sprintf "%d.%02d", q$Revision: 1.3 $ =~ /: (\d+)\.(\d+)/;

use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;
use ODO::RDFS::Resource;

@ISA = (  'ODO::RDFS::Resource', );

#
# Description: The class of classes.
#
# Schema URI: http://www.w3.org/2000/01/rdf-schema#
#
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'ODO::RDFS::Class::PropertiesContainer' );
	$self->properties(bless {}, 'ODO::RDFS::Class::PropertiesContainer');

	$self->properties()->{'parent'} = $self;



	if(   exists($properties{'subClassOf'})
	   && defined($properties{'subClassOf'})) {
	
		unless(UNIVERSAL::isa($properties{'subClassOf'}, 'ODO::RDFS::Properties::subClassOf')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('subClassOf')) {
			return undef;
		}
		
		$self->properties()->subClassOf( $properties{'subClassOf'} );
	}


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#Class>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#Class';
}

sub value {
	my $self = shift;
	
	return $self->subject()
		if(UNIVERSAL::isa($self->subject(), 'ODO::Node::Literal'));
	
	return $self->__to_statement_array();
}

sub __to_statement_array {
	my $self = shift;
	
	my $statements = [];
	
	foreach my $my_super (@ISA) {
	
		next
			unless(UNIVERSAL::can($my_super, '__to_statement_array'));
		
		my $super_func = "${my_super}::__to_statement_array";
		push @{ $statements }, @{ $self->$super_func() };
	}
	
	my %properties = (''=> '', 'subClassOf'=> 'ODO::RDFS::Properties::subClassOf', );
	
	foreach my $propertyName (keys(%properties)) {

		next 
			unless($propertyName && $propertyName ne '');
		
		my $property = $self->properties()->$propertyName();
		
		foreach my $p (@{ $property }) {
			my $p_value = $p->value();
			
			my $property_uri = ODO::Node::Resource->new($properties{$propertyName}->objectURI() );
			if(UNIVERSAL::isa($p_value, 'ODO::Node::Literal')) {
				push @{ $statements }, ODO::Statement->new($self->subject(), $property_uri, $p_value);
			}
			else {
				push @{ $statements }, ODO::Statement->new($self->subject(), $property_uri, $p->subject());
				push @{ $statements }, @{ $p_value };
			}
		}
	}
	
	return $statements;
}

1;
