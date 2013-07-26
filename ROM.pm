package Mock::Person::ROM;

# Pragmas.
use base qw(Exporter);
use strict;
use utf8;
use warnings;

# Modules.
use Readonly;

# Constants.
Readonly::Scalar our $SPACE => q{ };
Readonly::Array our @EXPORT_OK => qw(first_male first_female middle_female
	last_male last_female middle_male middle_female name);

# Version.
our $VERSION = 0.01;

# First and middle male names.
our @first_male = our @middle_male = qw(
Arpad
Dezo
Dezider
Dominik
Ervin
Jiří
Jolana
Josef
Kalman
Kevin
Lajos
Marian
Petr
Roman
Viliam
);

# First nad middle female names.
our @first_female = our @middle_female = qw(
Anna
Elizabeth
Erza
Esmeralda
Hana
Jessika
Kamila
Luci
Marika
Marget
Mária
Monika
Nikola
Renata
Romana
Terezie
Vanessa
Žaneta
);

# Last male names.
our @last_male = qw(
Absolon
Bady
Bado
Badžo
Bagár
Balog
Balogh
Bamberger
Bandi
Banga
Bango
Bari
Báro
Barok
Barya
Bazylak
Bažo
Bednár
Bendig
Bengoro
Beňák
Beňo
Berki
Berko
Bihári
Biháryi
Bikar
Bilaj
Bogol
Bokor
Botoš
Budaj
Byl
Cirok
Cobas
Csocs
Černohorský
Červeňák
Číča
Čičák
Čisar
Čobak
Čonka
Čornej
Čurej
Čureja
Čuri
Čurko
Daďo
Daniel
Danihel
Dajdy
Danko
Dany
Danyi
David
Demeter
Deňo
Derulo
Dirda
Dudy
Dunko
Duraj
Durasko
Durda
Durňak
Dydyk
Dzudza
Dzurko
Džuga
Džuman
Ďuďa
Fábero
Fabián
Fako
Farkaš
Fečo
Fehér
Fekete
Ferenc
Ferko
Gabčo
Gábor
Gadzor
Gadžor
Galba
Gataš
Gatoš
Gaži
Giňa
Giňo
Girga
Gizman
Goga
Gondolán
Gondy
Gorol
Grondzár
Grundza
Guman
Gunar
Gunár
Hangurbadžo
Hanko
Herák
Hiňa
Holdy
Holomek
Holub
Horváth
Hrivňák
Huňák
Husar
Chanžalik
Charvát
Ištánek
Ištok
Ištván
Janeček
Jano
Jurčo
Jurko
Kaleja
Kajkoš
Karol
Kašperko
Karvaj
Kavur
Kirko
Kirvej
Klempár
Klimt
Koky
Kuky
Kotlár
Kováč
Kovács
Kramčanin
Kučeraj
Kumaj
Kurej
Kurko
Kýr
Lacko
Lagryn
Lakatoš
Latymor
Lazok
Lofas
Lomanth
Maďar
Makaj
Makuňa
Malar
Malík
Mezej
Mezga
Mézga
Miazga
Miko
Milko
Mindzár
Mirga
Mižigar
Molnar
Murka
Németh
Oláh
Ondič
Oračko
Pacaj
Pako
Petržilka
Pfeffer
Plachetka
Pocikál
Pohlodko
Polhoš
Porčogoš
Procházka
Rigo
Richter
Rusznyak
Růžička
Sakajto
Samel
Sarkozy
Sinu
Sivák
Stojka
Stylar
Surmaj
Šajko
Szajko
Šamko
Szamko
Šandor
Šándor
Šarkezy
Ščuka
Šidélko
Šimko
Špivak
Šťuko
Tancoš
Tancosz
Telvak
Tomaš
Tomko
Totorkul
Tulej
Tuleja
Turták
Vega
Veselý
Virag
Vrba
Zaječí
Zaňák
Žiga
Žolták
);

# Last female names.
our @last_female = qw(
Mižigárová
);

# Get random first male name.
sub first_male {
	return $first_male[rand @first_male];
}

# Get random first female name.
sub first_female {
	return $first_female[rand @first_female];
}

# Get random last male name.
sub last_male {
	return $last_male[rand @last_male];
}

# Get random last female name.
sub last_female {
	return $last_female[rand @last_female];
}

# Get random middle male name.
sub middle_male {
	return $middle_male[rand @middle_male];
}

# Get random middle female name.
sub middle_female {
	return $middle_female[rand @middle_female];
}

# Get random name.
sub name {
	my $sex = shift;
	if (defined $sex && $sex eq 'female') {
		return first_female().$SPACE.middle_female().$SPACE.last_female();
	} else {
		return first_male().$SPACE.middle_male().$SPACE.last_male();
	}
}

1;

__END__

=encoding UTF-8

=cut

=head1 NAME

Mock::Person::ROM - Generate random sets of Romani names.

=head1 SYNOPSIS

 use Mock::Person::ROM qw(first_male first_female last_male last_female
         middle_male middle_female name);
 my $first_male = first_male();
 my $first_female = first_female();
 my $last_male = last_male();
 my $last_female = last_female();
 my $middle_male = middle_male();
 my $middle_female = middle_female();
 my $name = name($sex);

=head1 DESCRIPTION

Data for this module was found on these pages:

=over

=item B<Last names>

L<cz.wikipedia.org|http://cs.wikipedia.org/wiki/Seznam_nej%C4%8Detn%C4%9Bj%C5%A1%C3%ADch_p%C5%99%C3%ADjmen%C3%AD_v_%C4%8Cesku>

=item B<Middle names>

There's usually no distinction between a first and middle name in the Czech Republic.

=item B<First names>

L<cz.wikipedia.org - male names|http://cs.wikipedia.org/wiki/Seznam_nej%C4%8Dast%C4%9Bj%C5%A1%C3%ADch_mu%C5%BEsk%C3%BDch_jmen_v_%C4%8Cesk%C3%A9_republice>,
L<cs.wikipedia.org - female names|http://cs.wikipedia.org/wiki/Seznam_nej%C4%8Dast%C4%9Bj%C5%A1%C3%ADch_%C5%BEensk%C3%BDch_jmen_v_%C4%8Cesk%C3%A9_republice>.

=back

=head1 SUBROUTINES

=over 8

=item B<first_male()>

Returns random first name of male person.

=item B<first_female()>

Returns random first name of female person.

=item B<last_male()>

Returns random last name of male person.

=item B<last_female()>

Returns random last name of female person.

=item B<middle_male()>

Returns random middle name of male person.

=item B<middle_female()>

Returns random middle name of female person.

=item B<name([$sex])>

Recieves scalar with sex of the person ('male' or 'female') and returns
scalar with generated name.
Default value of $sex variable is 'male'.

=back

=head1 EXAMPLE1

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Encode qw(encode_utf8);
 use Mock::Person::ROM qw(name);

 # Error.
 print encode_utf8(name())."\n";

 # Output like.
 # TODO

=head1 EXAMPLE2

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Encode qw(encode_utf8);
 use Mock::Person::ROM;

 # Get all last male names.
 my @last_males = @Mock::Person::ROM::last_male;

 # Print out.
 print sort map { encode_utf8($_)."\n" } @last_males;

 # Output:
 # TODO

=head1 DEPENDENCIES

L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

L<Mock::Person>,
L<Mock::Person::CZ>,
L<Mock::Person::DE>,
L<Mock::Person::SK>,
L<Mock::Person::SV>,
L<Mock::Person::RU>.

=head1 REPOSITORY

L<https://github.com/tupinek/Mock-Person-ROM>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
