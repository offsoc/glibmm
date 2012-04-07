## This file was generated by taghandlerwriter.pl script.
##
## Copyright 2011, 2012 Krzesimir Nowak
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
##

package Gir::Api::Doc;

use strict;
use warnings;

use parent qw (Gir::Api::Common::Base);



sub new ($)
{
  my $type = shift;
  my $class = (ref $type or $type or 'Gir::Api::Doc');
  my $groups =
  [

  ];
  my $attributes =
  [
    'attribute_xml_whitespace'
  ];
  my $self = $class->SUPER::new ($groups, $attributes);

  bless $self, $class;
  return $self;
}

sub new_with_params ($$)
{
  my ($type, $params) = @_;
  my $self = Gir::Api::Doc::new $type;

  $self->set_a_xml_whitespace ($params->{'xml:whitespace'});

  return $self;
}









sub get_a_xml_whitespace ($)
{
  my ($self) = @_;

  return $self->_get_attribute ('attribute_xml_whitespace');
}


sub set_a_xml_whitespace ($$)
{
  my ($self, $value) = @_;

  $self->_set_attribute ('attribute_xml_whitespace', $value);
}


1; # indicate proper module load.
