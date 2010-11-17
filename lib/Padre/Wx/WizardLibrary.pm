package Padre::Wx::WizardLibrary;

# Defines all the core wizards for Padre.

use 5.008005;
use strict;
use warnings;
use Padre::Wx         ();
use Padre::Wx::Wizard ();

our $VERSION = '0.75';

######################################################################
# Wizard Database

sub init {

	Padre::Wx::Wizard->new(
		name     => 'perl5.module',
		label    => Wx::gettext('Script'),
		category => Wx::gettext('Perl 5'),
		comment  => Wx::gettext('Opens the Perl 5 module wizard'),
		class    => 'Padre::Wx::Dialog::Wizard::Perl5Module',
	);

	Padre::Wx::Wizard->new(
		name     => 'padre.plugin',
		label    => Wx::gettext('Plugin'),
		category => Wx::gettext('Padre'),
		comment  => Wx::gettext('Opens the Padre plugin wizard'),
		class    => 'Padre::Wx::Dialog::Wizard::PadrePlugin',
	);

	Padre::Wx::Wizard->new(
		name     => 'padre.document',
		label    => Wx::gettext('Document'),
		category => Wx::gettext('Padre'),
		comment  => Wx::gettext('Opens the Padre document wizard'),
		class    => 'Padre::Wx::Dialog::Wizard::PadreDocument',
	);

	return 1;
}

1;

# Copyright 2008-2010 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.