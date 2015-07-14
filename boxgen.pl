#!/usr/bin/perl

# This is very very very shitty and simple

# Openbox themerc gen script

# usage: boxgen.pl <base color> <secondary color>
# example: boxgen.pl "#000000" "#FFFFFF"

# NOTE: THE HEX COLORS /MUST/ BE IN QUOTES i.e "#000000"

my ($base, $secondary) = @ARGV;

my $predefined = <<EOF;
!! https://github.com/psilocin
!! this is a generated openbox themerc file

!! pre-defined shit
border.width: 2
padding.width: 1
menu.overlap.x: 2
menu.overlap.y: 0
osd.hilight.bg: flat
menu.border.width: 1
window.handle.width: 0
menu.items.justify: left
menu.items.bg: flat solid
window.client.padding.width: 0
window.label.text.justify: left
menu.title.text.justify: center
window.inactive.button.*.bg: flat
window.active.title.bg: flat solid
window.active.handle.bg: flat solid
window.inactive.title.bg: flat solid
window.inactive.handle.bg: flat solid
window.active.grip.bg: parentrelative
menu.title.bg: gradient vertical flat
window.active.button.disabled.bg: flat
window.active.label.bg: parentrelative
window.inactive.grip.bg: parentrelative
window.inactive.label.bg: parentrelative
window.inactive.button.disabled.bg: flat
menu.items.active.bg: gradient vertical flat
window.active.button.pressed.bg: parentrelative
window.active.button.unpressed.bg: parentrelative
EOF

# open file so we can write all the shit to it
open(THEMERC, ">>themerc");

# print pre-defined shit to themerc file
print THEMERC $predefined, "\n";

# print base color shit to themerc file
print THEMERC "!! base/primary color shit", "\n";
print THEMERC "menu.items.bg.color: $base", "\n";
print THEMERC "osd.hilight.bg.color: $base", "\n";
print THEMERC "menu.title.bg.color:  $base", "\n";
print THEMERC "menu.title.bg.colorTo: $base", "\n";
print THEMERC "window.active.grip.bg.color: $base", "\n";
print THEMERC "menu.items.active.text.color: $base", "\n";
print THEMERC "window.active.title.bg.color: $base", "\n";
print THEMERC "window.active.label.bg.color: $base", "\n";
print THEMERC "window.inactive.grip.bg.color: $base", "\n";
print THEMERC "window.inactive.title.bg.color:  $base", "\n";
print THEMERC "window.inactive.button.*.bg.color: $base", "\n";
print THEMERC "window.active.title.separator.color: $base", "\n";
print THEMERC "window.active.button.pressed.bg.color: $base", "\n";
print THEMERC "window.inactive.title.separator.color: $base", "\n";
print THEMERC "window.active.button.disabled.bg.color: $base", "\n";
print THEMERC "window.active.button.unpressed.bg.color: $base", "\n";
print THEMERC "window.active.button.pressed.image.color: $base", "\n";
print THEMERC "window.inactive.button.disabled.bg.color: $base", "\n";
print THEMERC "window.active.button.disabled.image.color: $base", "\n";
print THEMERC "window.inactive.button.disabled.image.color: $base", "\n";
print THEMERC "window.inactive.button.disabled.bg.border.color: $base", "\n";

# print secondary color shit to themerc file
print THEMERC "\n!! secondary color shit", "\n";
print THEMERC "border.color: $secondary", "\n";
print THEMERC "menu.border.color: $secondary", "\n";
print THEMERC "menu.separator.color: $secondary", "\n";
print THEMERC "menu.items.text.color: $secondary", "\n";
print THEMERC "menu.title.text.color: $secondary", "\n";
print THEMERC "window.active.client.color: $secondary", "\n";
print THEMERC "menu.items.active.bg.color: $secondary", "\n";
print THEMERC "menu.items.active.bg.colorTo: $secondary", "\n";
print THEMERC "window.inactive.client.color: $secondary", "\n";
print THEMERC "window.active.handle.bg.color: $secondary", "\n";
print THEMERC "window.active.label.text.color: $secondary", "\n";
print THEMERC "menu.items.disabled.text.color: $secondary", "\n";
print THEMERC "window.inactive.handle.bg.color: $secondary", "\n";
print THEMERC "window.inactive.label.text.color: $secondary", "\n";
print THEMERC "window.active.button.*.image.color: $secondary", "\n";
print THEMERC "window.inactive.button.*.image.color: $secondary", "\n";

# close themerc file
close(THEMERC);

