package sfmdBackend::ApplicationSchema::Result::Comment;

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

sfmdBackend::ApplicationSchema::Result::Comment

=cut

__PACKAGE__->table("Comment");

=head1 ACCESSORS

=head2 pk_commentid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 fk_cardid

  data_type: 'integer'
  is_nullable: 0

=head2 fk_userid

  data_type: 'integer'
  is_nullable: 0

=head2 comment_text

  data_type: 'varchar'
  is_nullable: 0
  size: 250

=head2 card_version

  data_type: 'integer'
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
  "pk_commentid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "fk_cardid",
  { data_type => "integer", is_nullable => 0 },
  "fk_userid",
  { data_type => "integer", is_nullable => 0 },
  "comment_text",
  { data_type => "varchar", is_nullable => 0, size => 250 },
  "card_version",
  { data_type => "integer", is_nullable => 0 },
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
__PACKAGE__->set_primary_key("pk_commentid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-04-20 22:34:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ItR3ZmAq6sgQx16g9IpEew


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
