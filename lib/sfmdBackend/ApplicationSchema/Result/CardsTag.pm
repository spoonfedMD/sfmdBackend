package sfmdBackend::ApplicationSchema::Result::CardsTag;

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

sfmdBackend::ApplicationSchema::Result::CardsTag

=cut

__PACKAGE__->table("Cards_Tags");

=head1 ACCESSORS

=head2 card_id

  data_type: 'integer'
  is_nullable: 0

=head2 tag_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "card_id",
  { data_type => "integer", is_nullable => 0 },
  "tag_id",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("card_id", "tag_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-20 22:34:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OhxGvPDZ1dxeVkVsMy+Glw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
