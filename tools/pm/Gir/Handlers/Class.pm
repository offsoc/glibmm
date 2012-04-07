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

package Gir::Handlers::Class;

use strict;
use warnings;

use parent qw (Gir::Handlers::Common::Base);

use Gir::Api::Attribute;
use Gir::Api::Constructor;
use Gir::Api::Doc;
use Gir::Api::Field;
use Gir::Api::Function;
use Gir::Api::GlibSignal;
use Gir::Api::Implements;
use Gir::Api::Method;
use Gir::Api::Property;
use Gir::Api::Record;
use Gir::Api::Union;
use Gir::Api::VirtualMethod;

use Gir::Handlers::Common::Misc;
use Gir::Handlers::Common::Store;
use Gir::Handlers::Common::Tags;

use Gir::Handlers::Attribute;
use Gir::Handlers::Constructor;
use Gir::Handlers::Doc;
use Gir::Handlers::Field;
use Gir::Handlers::Function;
use Gir::Handlers::GlibSignal;
use Gir::Handlers::Implements;
use Gir::Handlers::Method;
use Gir::Handlers::Property;
use Gir::Handlers::Record;
use Gir::Handlers::Union;
use Gir::Handlers::VirtualMethod;

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

sub _constructor_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_constructor_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Constructor->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('constructor');
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

sub _field_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_field_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Field->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('field');
}

sub _function_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_function_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Function->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('function');
}

sub _glib_signal_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_glib_signal_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::GlibSignal->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('glib:signal');
}

sub _implements_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_implements_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Implements->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('implements');
}

sub _method_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_method_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Method->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('method');
}

sub _property_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_property_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Property->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('property');
}

sub _record_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_record_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Record->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('record');
}

sub _union_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_union_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Union->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('union');
}

sub _virtual_method_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_virtual_method_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::VirtualMethod->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('virtual-method');
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

sub _constructor_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('constructor');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_constructor_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_constructor ($name, $object);
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

sub _field_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('field');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_field_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_field ($name, $object);
}

sub _function_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('function');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_function_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_function ($name, $object);
}

sub _glib_signal_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('glib:signal');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_glib_signal_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_glib_signal ($name, $object);
}

sub _implements_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('implements');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_implements_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_implements ($name, $object);
}

sub _method_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('method');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_method_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_method ($name, $object);
}

sub _property_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('property');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_property_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_property ($name, $object);
}

sub _record_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('record');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_record_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_record ($name, $object);
}

sub _union_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('union');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_union_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_union ($name, $object);
}

sub _virtual_method_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('virtual-method');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_virtual_method_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_virtual_method ($name, $object);
}

##
## public:
##
sub new ($)
{
  my $type = shift;
  my $class = (ref $type or $type or 'Gir::Handlers::Class');
  my $start_store = Gir::Handlers::Common::Store->new
  ({
    'attribute' => \&_attribute_start,
    'constructor' => \&_constructor_start,
    'doc' => \&_doc_start,
    'field' => \&_field_start,
    'function' => \&_function_start,
    'glib:signal' => \&_glib_signal_start,
    'implements' => \&_implements_start,
    'method' => \&_method_start,
    'property' => \&_property_start,
    'record' => \&_record_start,
    'union' => \&_union_start,
    'virtual-method' => \&_virtual_method_start
  });
  my $end_store = Gir::Handlers::Common::Store->new
  ({
    'attribute' => \&_attribute_end,
    'constructor' => \&_constructor_end,
    'doc' => \&_doc_end,
    'field' => \&_field_end,
    'function' => \&_function_end,
    'glib:signal' => \&_glib_signal_end,
    'implements' => \&_implements_end,
    'method' => \&_method_end,
    'property' => \&_property_end,
    'record' => \&_record_end,
    'union' => \&_union_end,
    'virtual-method' => \&_virtual_method_end
  });
  my $subhandlers =
  {
    'attribute' => 'Gir::Handlers::Attribute',
    'constructor' => 'Gir::Handlers::Constructor',
    'doc' => 'Gir::Handlers::Doc',
    'field' => 'Gir::Handlers::Field',
    'function' => 'Gir::Handlers::Function',
    'glib:signal' => 'Gir::Handlers::GlibSignal',
    'implements' => 'Gir::Handlers::Implements',
    'method' => 'Gir::Handlers::Method',
    'property' => 'Gir::Handlers::Property',
    'record' => 'Gir::Handlers::Record',
    'union' => 'Gir::Handlers::Union',
    'virtual-method' => 'Gir::Handlers::VirtualMethod'
  };
  my $self = $class->SUPER::new ($start_store, $end_store, $subhandlers);

  return bless $self, $class;
}

1; # indicate proper module load.
