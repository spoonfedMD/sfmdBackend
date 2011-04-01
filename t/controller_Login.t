use strict;
use warnings;
use Test::More;


use Catalyst::Test 'sfmdBackend';
use sfmdBackend::Controller::Login;

ok( request('/login')->is_success, 'Request should succeed' );
done_testing();
