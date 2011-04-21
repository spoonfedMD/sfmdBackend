package sfmdBackend::ApplicationSchema::Result::Tag;

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

sfmdBackend::ApplicationSchema::Result::Tag

=cut

__PACKAGE__->table("Tag");

=head1 ACCESSORS

=head2 pk_tagid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 tag_text

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 mesh_parent

  data_type: 'integer'
  is_nullable: 1

=head2 approved

  data_type: 'tinyint'
  is_nullable: 0

=head2 created

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 modified

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "pk_tagid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "tag_text",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "mesh_parent",
  { data_type => "integer", is_nullable => 1 },
  "approved",
  { data_type => "tinyint", is_nullable => 0 },
  "created",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "modified",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("pk_tagid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-20 22:34:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tYBfjTApZ1vPsWLuOoTsvA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
