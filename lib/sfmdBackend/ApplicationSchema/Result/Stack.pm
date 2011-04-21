package sfmdBackend::ApplicationSchema::Result::Stack;

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

sfmdBackend::ApplicationSchema::Result::Stack

=cut

__PACKAGE__->table("Stack");

=head1 ACCESSORS

=head2 pk_stackid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 fk_userid

  data_type: 'integer'
  is_nullable: 0

=head2 count

  data_type: 'integer'
  is_nullable: 0

=head2 fk_difficultyid

  data_type: 'integer'
  is_nullable: 1

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
  "pk_stackid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "fk_userid",
  { data_type => "integer", is_nullable => 0 },
  "count",
  { data_type => "integer", is_nullable => 0 },
  "fk_difficultyid",
  { data_type => "integer", is_nullable => 1 },
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
__PACKAGE__->set_primary_key("pk_stackid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-20 22:34:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:U/+CTyUVh+DoIhhY3TjSkQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
