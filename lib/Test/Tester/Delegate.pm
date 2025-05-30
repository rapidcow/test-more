use strict;
use warnings;

package Test::Tester::Delegate;

our $VERSION = '1.302215';

use Scalar::Util();

sub new
{
	my $pkg = shift;

	my $obj = shift;
	my $self = bless {}, $pkg;

	return $self;
}

sub AUTOLOAD
{
	my ($sub) = our $AUTOLOAD =~ /.*::(.*?)$/;

	return if $sub eq "DESTROY";

	my $obj = $_[0]->{Object};

	my $ref = $obj->can($sub);
	shift(@_);
	unshift(@_, $obj);
	goto &$ref;
}

sub can {
	my $this = shift;
	my ($sub) = @_;

	return $this->{Object}->can($sub) if Scalar::Util::blessed($this);

	return $this->SUPER::can(@_);
}

1;
