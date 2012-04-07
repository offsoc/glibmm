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

package Gir::Handlers::Method;

use strict;
use warnings;

use parent qw (Gir::Handlers::Common::Base);

use Gir::Api::Attribute;
use Gir::Api::Doc;
use Gir::Api::Parameters;
use Gir::Api::ReturnValue;

use Gir::Handlers::Common::Misc;
use Gir::Handlers::Common::Store;
use Gir::Handlers::Common::Tags;

use Gir::Handlers::Attribute;
use Gir::Handlers::Doc;
use Gir::Handlers::Parameters;
use Gir::Handlers::ReturnValue;

##
## private:
##
sub _attribute_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_attribute_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Attribute->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('attribute');
}

sub _doc_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_doc_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Doc->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('doc');
}

sub _parameters_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_parameters_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Parameters->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('parameters');
}

sub _return_value_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_return_value_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::ReturnValue->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('return-value');
}

sub _attribute_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('attribute');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_attribute_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_attribute ($name, $object);
}

sub _doc_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('doc');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_doc_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_doc ($name, $object);
}

sub _parameters_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('parameters');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_parameters_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_parameters ($name, $object);
}

sub _return_value_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('return-value');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_return_value_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_return_value ($name, $object);
}

##
## public:
##
sub new ($)
{
  my $type = shift;
  my $class = (ref $type or $type or 'Gir::Handlers::Method');
  my $start_store = Gir::Handlers::Common::Store->new
  ({
    'attribute' => \&_attribute_start,
    'doc' => \&_doc_start,
    'parameters' => \&_parameters_start,
    'return-value' => \&_return_value_start
  });
  my $end_store = Gir::Handlers::Common::Store->new
  ({
    'attribute' => \&_attribute_end,
    'doc' => \&_doc_end,
    'parameters' => \&_parameters_end,
    'return-value' => \&_return_value_end
  });
  my $subhandlers =
  {
    'attribute' => 'Gir::Handlers::Attribute',
    'doc' => 'Gir::Handlers::Doc',
    'parameters' => 'Gir::Handlers::Parameters',
    'return-value' => 'Gir::Handlers::ReturnValue'
  };
  my $self = $class->SUPER::new ($start_store, $end_store, $subhandlers);

  return bless $self, $class;
}

1; # indicate proper module load.
