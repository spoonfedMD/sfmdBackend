package sfmdBackend::ApplicationSchema::Result::StacksCard;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 NAME

sfmdBackend::ApplicationSchema::Result::StacksCard

=cut

__PACKAGE__->table("Stacks_Cards");

=head1 ACCESSORS

=head2 stack_id

  data_type: 'integer'
  is_nullable: 0

=head2 card_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "stack_id",
  { data_type => "integer", is_nullable => 0 },
  "card_id",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("stack_id", "card_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-20 22:34:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:00JkKtB1vxA5Hd9ohnjd8w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
