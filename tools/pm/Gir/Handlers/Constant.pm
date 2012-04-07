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

package Gir::Handlers::Constant;

use strict;
use warnings;

use parent qw (Gir::Handlers::Common::Base);

use Gir::Api::Array;
use Gir::Api::Type;
use Gir::Api::Varargs;

use Gir::Handlers::Common::Misc;
use Gir::Handlers::Common::Store;
use Gir::Handlers::Common::Tags;

use Gir::Handlers::Array;
use Gir::Handlers::Type;
use Gir::Handlers::Varargs;

##
## private:
##
sub _array_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_array_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Array->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('array');
}

sub _type_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_type_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Type->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('type');
}

sub _varargs_start ($$%)
{
  my ($self, $parser, %atts_vals) = @_;
  my $params = Gir::Handlers::Common::Tags::get_varargs_params %atts_vals;
  my $state = $parser->get_current_state;
  my $object = Gir::Api::Varargs->new_with_params ($params);

  $state->push_object ($object);
  $self->_call_start_hooks ('varargs');
}

sub _array_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('array');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_array_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_array ($name, $object);
}

sub _type_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('type');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_type_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_type ($name, $object);
}

sub _varargs_end ($$)
{
  my ($self, $parser) = @_;

  $self->_call_end_hooks ('varargs');

  my $state = $parser->get_current_state;
  my $object = $state->get_current_object;

  $state->pop_object;

  my $parent_object = $state->get_current_object;
  my $count = $parent_object->get_g_varargs_count;
  my $name = Gir::Handlers::Common::Misc::get_object_name $object, $count;

  $parent_object->add_g_varargs ($name, $object);
}

##
## public:
##
sub new ($)
{
  my $type = shift;
  my $class = (ref $type or $type or 'Gir::Handlers::Constant');
  my $start_store = Gir::Handlers::Common::Store->new
  ({
    'array' => \&_array_start,
    'type' => \&_type_start,
    'varargs' => \&_varargs_start
  });
  my $end_store = Gir::Handlers::Common::Store->new
  ({
    'array' => \&_array_end,
    'type' => \&_type_end,
    'varargs' => \&_varargs_end
  });
  my $subhandlers =
  {
    'array' => 'Gir::Handlers::Array',
    'type' => 'Gir::Handlers::Type',
    'varargs' => 'Gir::Handlers::Varargs'
  };
  my $self = $class->SUPER::new ($start_store, $end_store, $subhandlers);

  return bless $self, $class;
}

1; # indicate proper module load.
