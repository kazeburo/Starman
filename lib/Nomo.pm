package Nomo;

use strict;
use 5.008_001;
our $VERSION = '0.01';

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

Nomo - High performance, starter-aware and preforking PSGI web server

=head1 SYNOPSIS

  # preforking HTTP server
  % nomo --max-workers 20 app.psgi

  # run with Server::Starter superdaemon
  % server_starter --port 127.0.0.1:80 -- nomo --max-workers 32 app.psgi

=head1 DESCRIPTION

Nomo is a collection of unique Web servers, that are:

=over 4

=item High Performance

Heavily uses XS to use C extensions to parse HTTP headers and use
sendfile(2) to serve static files if available.

=item Preforking

Runs servers preforked like most high performance UNIX servers
do. This means your applications are preloaded to be copy-on-write
friendly.

It also means your application can be blocking, and load-balancing is
handled by kernels. No requests piled up behind busy workers.

=item Superdaemon aware

Automatically detect superdaemon such as Server::Starter and
ControlFreak to benefit from features such as hot deploy, graceful
restarts and sharing UNIX Domain sockets.

=item UNIX only

Optimized for UNIX for the best performance by avoiding weird Win32
compatible code.

=item PSGI compatible

Can run any PSGI applications and frameworks.

=back

Features that are planned but not implemented are:

=over 4

=item Reaping dead workers

=item Logrotate via signals

=item Dynamic adjustment of Worker processes

=item Perl DSL configuration

=back

=head1 NOMO?

The name Nomo is taken from the baseball player
L<Hideo Nomo|http://en.wikipedia.org/wiki/Hideo_Nomo>, who is a great
starter, famous for his forkball and whose nickname is Tornado.

=head1 AUTHORS

Tatsuhiko Miyagawa

Kazuho Oku

Daisuke Maki

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Plack> L<HTTP::Server::PSGI::Prefork>

=cut