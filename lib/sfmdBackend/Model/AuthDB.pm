package sfmdBackend::Model::AuthDB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'sfmdBackend::Schema',
    
    connect_info => {
        dsn => 'dbi:SQLite:AuthDB.db',
        user => '',
        password => '',
        on_connect_do => q{PRAGMA foreign_keys = ON},
    }
);

=head1 NAME

sfmdBackend::Model::AuthDB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<sfmdBackend>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<sfmdBackend::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.48

=head1 AUTHOR

Ryan McGivern

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
