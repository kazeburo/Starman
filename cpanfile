requires 'Data::Dump';
requires 'HTTP::Date';
requires 'HTTP::Parser::XS';
requires 'HTTP::Status';
requires 'Net::Server', '0.91';
requires 'Plack', '0.9971';
requires 'Test::TCP', '1.11';
requires 'parent';
requires 'perl', '5.008001';

on test => sub {
    requires 'Test::More';
    requires 'Test::Requires';
};
