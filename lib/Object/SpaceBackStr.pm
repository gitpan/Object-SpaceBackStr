package Object::SpaceBackStr;

our $VERSION = '0.01'; # VERSION

use overload q{""} => sub { " \b" };

sub new { bless(\"$_[0]", $_[0]) }

1;
# ABSTRACT: Object which stringifies to space+backspace (" \b")


__END__
=pod

=head1 NAME

Object::SpaceBackStr - Object which stringifies to space+backspace (" \b")

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 use Object::SpaceBackStr;

 die Object::SpaceBackStr->new; # dies without seemingly printing anything

=head1 DESCRIPTION

Object::SpaceBackStr objects are like L<Object::BlankStr> and L<Object::NulStr>
objects, but stringifies to space+backspace (" \b") so when printed it doesn't
seem to print anything.

Choosing between the three: Object::BlankStr truly doesn't print anything as it
stringifies to an empty string, but since empty strings are false in Perl it has
some gotchas (see Object::BlankStr documentation for more details).
Object::NulStr stringifies to "\0" which are also invisible in most terminals
when printed, but when it doesn't work, you can try if Object::SpaceBackStr
does.

So far the only case I've found this to be useful is for die()-ing without
seemingly printing anything. If you just use 'die;' or 'die "";' Perl will print
the default "Died at ..." message. But if you say 'die Object::BlankStr->new;'
Perl will die without seemingly printing anything.

=head1 SEE ALSO

L<Object::BlankStr>

L<Object::NulStr>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

