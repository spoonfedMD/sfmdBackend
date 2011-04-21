package sfmdBackend::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'sfmdBackend::ApplicationSchema',
    
    connect_info => {
        dsn => 'dbi:mysql:spoonfedDB',
        user => 'root',
        password => 'admin',
    }
);

=head1 NAME

sfmdBackend::Model::DB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<sfmdBackend>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<sfmdBackend::ApplicationSchema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.48

=head1 AUTHOR

Ryan McGivern

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;