package sfmdBackend::Controller::Login;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

sfmdBackend::Controller::Login - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
	# Get the username and password from form
	        my $username = "admin";
	        my $password = "admin";

	        # If the username and password values were found in form
	        if ($username && $password) {
	            # Attempt to log the user in
	            if ($c->authenticate({ username => $username,
	                                   password => $password  } )) {
	                # If successful, then let them use the application
					#$c->stash->{username} = $c->user->username;
	                #$c->response->redirect($c->uri_for(
	                 #   $c->controller('Root')->action_for('getCard1')));
					$c->forward('/getCard1');
	                return;
	            } else {
	                # Set an error message
	                $c->stash(message => "Bad username or password.");
	            }
	        } else {
	            # Set an error message
	            $c->stash(message => "Empty username or password.");
	        }
	        # If either of above don't work out, send to the login page
	        #$c->stash(template => 'webview.tt');

}


=head1 AUTHOR

Ryan McGivern

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
