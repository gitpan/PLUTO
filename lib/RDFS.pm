

# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Container;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource', );









#
# Description: The class of RDF containers.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Container::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Container::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#Container>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#Container';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Container::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Literal;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource', );









#
# Description: The class of literal values, eg. textual strings and integers.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Literal::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Literal::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#Literal>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#Literal';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Literal::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Alt;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Container', );









#
# Description: The class of containers of alternatives.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Alt::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Alt::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#Alt>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#Alt';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Alt::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Container::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Datatype;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Class', );









#
# Description: The class of RDF datatypes.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Datatype::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Datatype::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#Datatype>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#Datatype';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Datatype::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Class::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Statement;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource', );









#
# Description: The class of RDF statements.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Statement::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Statement::PropertiesContainer');

	$self->properties()->{'parent'} = $self;



	if(   exists($properties{'subject'})
	   && defined($properties{'subject'})) {
	
		unless(UNIVERSAL::isa($properties{'subject'}, 'RDFS::Properties::subject')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('subject')) {
			return undef;
		}
		
		$self->properties()->subject( $properties{'subject'} );
	}



	if(   exists($properties{'object'})
	   && defined($properties{'object'})) {
	
		unless(UNIVERSAL::isa($properties{'object'}, 'RDFS::Properties::object')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('object')) {
			return undef;
		}
		
		$self->properties()->object( $properties{'object'} );
	}



	if(   exists($properties{'predicate'})
	   && defined($properties{'predicate'})) {
	
		unless(UNIVERSAL::isa($properties{'predicate'}, 'RDFS::Properties::predicate')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('predicate')) {
			return undef;
		}
		
		$self->properties()->predicate( $properties{'predicate'} );
	}


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#Statement>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#Statement';
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
	
	my %properties = (''=> '', 'subject'=> 'RDFS::Properties::subject',  'object'=> 'RDFS::Properties::object',  'predicate'=> 'RDFS::Properties::predicate', );
	
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


package RDFS::Statement::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Resource::PropertiesContainer', );











# Methods


sub subject {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::subject')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::subject->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::subject' );
}




sub object {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::object')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::object->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::object' );
}




sub predicate {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::predicate')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::predicate->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::predicate' );
}






1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Property;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource', );









#
# Description: The class of RDF properties.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Property::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Property::PropertiesContainer');

	$self->properties()->{'parent'} = $self;



	if(   exists($properties{'subPropertyOf'})
	   && defined($properties{'subPropertyOf'})) {
	
		unless(UNIVERSAL::isa($properties{'subPropertyOf'}, 'RDFS::Properties::subPropertyOf')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('subPropertyOf')) {
			return undef;
		}
		
		$self->properties()->subPropertyOf( $properties{'subPropertyOf'} );
	}



	if(   exists($properties{'range'})
	   && defined($properties{'range'})) {
	
		unless(UNIVERSAL::isa($properties{'range'}, 'RDFS::Properties::range')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('range')) {
			return undef;
		}
		
		$self->properties()->range( $properties{'range'} );
	}



	if(   exists($properties{'domain'})
	   && defined($properties{'domain'})) {
	
		unless(UNIVERSAL::isa($properties{'domain'}, 'RDFS::Properties::domain')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('domain')) {
			return undef;
		}
		
		$self->properties()->domain( $properties{'domain'} );
	}


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#Property';
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
	
	my %properties = (''=> '', 'subPropertyOf'=> 'RDFS::Properties::subPropertyOf',  'range'=> 'RDFS::Properties::range',  'domain'=> 'RDFS::Properties::domain', );
	
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


package RDFS::Property::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Resource::PropertiesContainer', );











# Methods


sub subPropertyOf {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::subPropertyOf')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::subPropertyOf->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::subPropertyOf' );
}




sub range {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::range')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::range->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::range' );
}




sub domain {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::domain')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::domain->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::domain' );
}






1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Bag;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Container', );









#
# Description: The class of unordered containers.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Bag::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Bag::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#Bag>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#Bag';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Bag::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Container::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Seq;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Container', );









#
# Description: The class of ordered containers.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Seq::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Seq::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#Seq>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#Seq';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Seq::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Container::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::List;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource', );









#
# Description: The class of RDF Lists.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::List::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::List::PropertiesContainer');

	$self->properties()->{'parent'} = $self;



	if(   exists($properties{'rest'})
	   && defined($properties{'rest'})) {
	
		unless(UNIVERSAL::isa($properties{'rest'}, 'RDFS::Properties::rest')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('rest')) {
			return undef;
		}
		
		$self->properties()->rest( $properties{'rest'} );
	}



	if(   exists($properties{'first'})
	   && defined($properties{'first'})) {
	
		unless(UNIVERSAL::isa($properties{'first'}, 'RDFS::Properties::first')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('first')) {
			return undef;
		}
		
		$self->properties()->first( $properties{'first'} );
	}


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#List>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List';
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
	
	my %properties = (''=> '', 'rest'=> 'RDFS::Properties::rest',  'first'=> 'RDFS::Properties::first', );
	
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


package RDFS::List::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Resource::PropertiesContainer', );











# Methods


sub rest {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::rest')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::rest->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::rest' );
}




sub first {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::first')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::first->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::first' );
}






1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Resource;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;
use ODO::Ontology::RDFS::BaseClass;


@ISA = (  'ODO::Ontology::RDFS::BaseClass', );









#
# Description: The class resource, everything.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Resource::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Resource::PropertiesContainer');

	$self->properties()->{'parent'} = $self;



	if(   exists($properties{'comment'})
	   && defined($properties{'comment'})) {
	
		unless(UNIVERSAL::isa($properties{'comment'}, 'RDFS::Properties::comment')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('comment')) {
			return undef;
		}
		
		$self->properties()->comment( $properties{'comment'} );
	}



	if(   exists($properties{'label'})
	   && defined($properties{'label'})) {
	
		unless(UNIVERSAL::isa($properties{'label'}, 'RDFS::Properties::label')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('label')) {
			return undef;
		}
		
		$self->properties()->label( $properties{'label'} );
	}



	if(   exists($properties{'member'})
	   && defined($properties{'member'})) {
	
		unless(UNIVERSAL::isa($properties{'member'}, 'RDFS::Properties::member')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('member')) {
			return undef;
		}
		
		$self->properties()->member( $properties{'member'} );
	}



	if(   exists($properties{'seeAlso'})
	   && defined($properties{'seeAlso'})) {
	
		unless(UNIVERSAL::isa($properties{'seeAlso'}, 'RDFS::Properties::seeAlso')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('seeAlso')) {
			return undef;
		}
		
		$self->properties()->seeAlso( $properties{'seeAlso'} );
	}



	if(   exists($properties{'isDefinedBy'})
	   && defined($properties{'isDefinedBy'})) {
	
		unless(UNIVERSAL::isa($properties{'isDefinedBy'}, 'RDFS::Properties::isDefinedBy')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('isDefinedBy')) {
			return undef;
		}
		
		$self->properties()->isDefinedBy( $properties{'isDefinedBy'} );
	}



	if(   exists($properties{'type'})
	   && defined($properties{'type'})) {
	
		unless(UNIVERSAL::isa($properties{'type'}, 'RDFS::Properties::type')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('type')) {
			return undef;
		}
		
		$self->properties()->type( $properties{'type'} );
	}



	if(   exists($properties{'value'})
	   && defined($properties{'value'})) {
	
		unless(UNIVERSAL::isa($properties{'value'}, 'RDFS::Properties::value')) {
			return undef;
		}
		
		unless($self->can('properties')) {
			return undef;
		}
		
		unless($self->properties()->can('value')) {
			return undef;
		}
		
		$self->properties()->value( $properties{'value'} );
	}


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#Resource>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#Resource';
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
	
	my %properties = (''=> '', 'comment'=> 'RDFS::Properties::comment',  'label'=> 'RDFS::Properties::label',  'member'=> 'RDFS::Properties::member',  'seeAlso'=> 'RDFS::Properties::seeAlso',  'isDefinedBy'=> 'RDFS::Properties::isDefinedBy',  'type'=> 'RDFS::Properties::type',  'value'=> 'RDFS::Properties::value', );
	
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


package RDFS::Resource::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD );















# Methods


sub comment {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::comment')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::comment->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::comment' );
}




sub label {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::label')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::label->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::label' );
}




sub member {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::member')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::member->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::member' );
}




sub seeAlso {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::seeAlso')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::seeAlso->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::seeAlso' );
}




sub isDefinedBy {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::isDefinedBy')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::isDefinedBy->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::isDefinedBy' );
}




sub type {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::type')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::type->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::type' );
}




sub value {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::value')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::value->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::value' );
}






1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Class;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource', );









#
# Description: The class of classes.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Class::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Class::PropertiesContainer');

	$self->properties()->{'parent'} = $self;



	if(   exists($properties{'subClassOf'})
	   && defined($properties{'subClassOf'})) {
	
		unless(UNIVERSAL::isa($properties{'subClassOf'}, 'RDFS::Properties::subClassOf')) {
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
	
	my %properties = (''=> '', 'subClassOf'=> 'RDFS::Properties::subClassOf', );
	
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


package RDFS::Class::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Resource::PropertiesContainer', );











# Methods


sub subClassOf {
	my $self = shift;

	my $parent = $self->{'parent'};
	unless($parent) {
		die('Fatal error in property container: parent object is not defined!');
	}

	if(   scalar(@_) > 0
	   && UNIVERSAL::isa($_[0], 'RDFS::Properties::subClassOf')) {

		my $value = $_[0]->value();
		
		my $property = ODO::Node::Resource->new( RDFS::Properties::subClassOf->objectURI() );
		if(UNIVERSAL::isa($value, 'ODO::Node::Literal')) {			
			my $stmt = ODO::Statement->new($parent->subject(), $property, $value);
			$parent->graph()->add($stmt);
		}
		else {
			# The property's value is a URI with other attached URIs so add them 
			# all to the graph
			my $stmt = ODO::Statement->new($parent->subject(), $property, $_[0]->subject());
			$parent->graph()->add($stmt);
			$parent->graph()->add( @{ $value } );
		}
	}
	
	return $parent->get_property_values( 'RDFS::Properties::subClassOf' );
}






1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::ContainerMembershipProperty;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Property', );









#
# Description: The class of container membership properties, rdf:_1, rdf:_2, ...,\n all of which are sub-properties of 'member'.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::ContainerMembershipProperty::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::ContainerMembershipProperty::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#ContainerMembershipProperty>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#ContainerMembershipProperty';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::ContainerMembershipProperty::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::comment;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Literal',  'RDFS::Property', );









#
# Description: A description of the subject resource.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::comment::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::comment::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#comment>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#comment';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::comment::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Literal::PropertiesContainer',  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::subClassOf;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Class',  'RDFS::Property', );









#
# Description: The subject is a subclass of a class.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::subClassOf::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::subClassOf::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#subClassOf>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#subClassOf';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::subClassOf::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Class::PropertiesContainer',  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::first;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Property', );









#
# Description: The first item in the subject RDF list.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::first::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::first::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#first>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::first::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::label;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Literal',  'RDFS::Property', );









#
# Description: A human-readable name for the subject.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::label::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::label::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#label>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#label';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::label::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Literal::PropertiesContainer',  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::seeAlso;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Property', );









#
# Description: Further information about the subject resource.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::seeAlso::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::seeAlso::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#seeAlso>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#seeAlso';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::seeAlso::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::object;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Property', );









#
# Description: The object of the subject RDF statement.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::object::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::object::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#object>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#object';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::object::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::isDefinedBy;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Properties::seeAlso', );









#
# Description: The defininition of the subject resource.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::isDefinedBy::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::isDefinedBy::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#isDefinedBy>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::isDefinedBy::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Properties::seeAlso::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::subPropertyOf;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Property', );









#
# Description: The subject is a subproperty of a property.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::subPropertyOf::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::subPropertyOf::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#subPropertyOf>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::subPropertyOf::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::predicate;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Property', );









#
# Description: The predicate of the subject RDF statement.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::predicate::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::predicate::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#predicate>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#predicate';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::predicate::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::subject;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Property', );









#
# Description: The subject of the subject RDF statement.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::subject::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::subject::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#subject>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#subject';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::subject::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::range;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Class',  'RDFS::Property', );









#
# Description: A range of the subject property.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::range::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::range::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#range>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#range';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::range::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Class::PropertiesContainer',  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::value;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Property', );









#
# Description: Idiomatic property used for structured values.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::value::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::value::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#value>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#value';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::value::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::member;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Resource',  'RDFS::Property', );









#
# Description: A member of the subject resource.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::member::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::member::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#member>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#member';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::member::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Property::PropertiesContainer',  'RDFS::Resource::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::domain;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Class',  'RDFS::Property', );









#
# Description: A domain of the subject property.#
# Schema URI: http://www.w3.org/2000/01/rdf-schema##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::domain::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::domain::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/2000/01/rdf-schema#domain>)';
}

sub objectURI {
	return 'http://www.w3.org/2000/01/rdf-schema#domain';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::domain::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Class::PropertiesContainer',  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::type;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::Class',  'RDFS::Property', );









#
# Description: The subject is an instance of a class.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::type::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::type::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#type>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::type::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::Class::PropertiesContainer',  'RDFS::Property::PropertiesContainer', );











# Methods




1;



# WARNING: This is generated code. Editing this file is not recommended.
package RDFS::Properties::rest;

use strict;
use warnings;

use vars qw( @ISA );


use ODO;
use ODO::Query::Simple;
use ODO::Statement::Group;


@ISA = (  'RDFS::List',  'RDFS::Property', );









#
# Description: The rest of the subject RDF list after the first item.#
# Schema URI: http://www.w3.org/1999/02/22-rdf-syntax-ns##
sub new {
	my $self = shift;
	my ($resource, $graph, %properties) = @_;
	
	$self = $self->SUPER::new(@_);
	
	return undef
		unless(ref $self);
	
	$self->propertyContainerName( 'RDFS::Properties::rest::PropertiesContainer' );
	$self->properties(bless {}, 'RDFS::Properties::rest::PropertiesContainer');

	$self->properties()->{'parent'} = $self;


	return $self;
}

sub queryString {
	return '(?subj, rdf:type, <http://www.w3.org/1999/02/22-rdf-syntax-ns#rest>)';
}

sub objectURI {
	return 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest';
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
	
	my %properties = (''=> '',);
	
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


package RDFS::Properties::rest::PropertiesContainer;

use strict;
use warnings;

use vars qw( $AUTOLOAD @ISA );




@ISA = (  'RDFS::List::PropertiesContainer',  'RDFS::Property::PropertiesContainer', );











# Methods




1;

