package sfmdBackend::ApplicationSchema::Result::Card;

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

sfmdBackend::ApplicationSchema::Result::Card

=cut

__PACKAGE__->table("Card");

=head1 ACCESSORS

=head2 cardid

  data_type: 'integer'
  is_nullable: 0

=head2 version

  data_type: 'integer'
  is_nullable: 0

=head2 fk_userid

  data_type: 'integer'
  is_nullable: 0

=head2 qtext

  data_type: 'varchar'
  is_nullable: 0
  size: 250

=head2 atext

  data_type: 'varchar'
  is_nullable: 0
  size: 250

=head2 fk_imageid

  data_type: 'integer'
  is_nullable: 1

=head2 star_rating

  data_type: 'smallint'
  is_nullable: 0

=head2 created

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cardid",
  { data_type => "integer", is_nullable => 0 },
  "version",
  { data_type => "integer", is_nullable => 0 },
  "fk_userid",
  { data_type => "integer", is_nullable => 0 },
  "qtext",
  { data_type => "varchar", is_nullable => 0, size => 250 },
  "atext",
  { data_type => "varchar", is_nullable => 0, size => 250 },
  "fk_imageid",
  { data_type => "integer", is_nullable => 1 },
  "star_rating",
  { data_type => "smallint", is_nullable => 0 },
  "created",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("cardid", "version");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-20 22:34:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nZs401LTy/kj0casyeFkAQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
