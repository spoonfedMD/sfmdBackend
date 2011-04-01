package sfmdBackend::Schema::Result::KnownHost;

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

sfmdBackend::Schema::Result::KnownHost

=cut

__PACKAGE__->table("known_hosts");

=head1 ACCESSORS

=head2 known_host

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 username

  data_type: 'text'
  is_nullable: 1

=head2 host_id

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "known_host",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "username",
  { data_type => "text", is_nullable => 1 },
  "host_id",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("known_host");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-03-31 20:21:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cuqYQqiHhJa/d2S+nrSRRA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
