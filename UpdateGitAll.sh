#!/usr/bin/env sh
#
# UpdateGithub.sh
#
#
# Copyleft 2010-2014 Luca Cappelletti <luca.cappelletti@gmail.com>
#
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
# Version 2, December 2004
#
# Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>
#
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
#
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
# TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
# 0. You just DO WHAT THE FUCK YOU WANT TO.
#

APPNAME="FirefoxUX"

git config --global user.name "mutek"
git config --global user.email mutek@inventati.org

echo "Aggiungo i cambiamenti al database locale"
git add .
echo "Inserisci una descrizione dei tuoi cambiamenti"
read n
echo "Eseguo la finalizzazione dei cambiamenti in locale"
git commit -a -m "$n"

echo "Invio i cambiamenti locali ai depositi remoti..."
echo "GitHub e Bitbucket e Sourceforge"
#git push origin master

# GitHub
echo "-- GitHub --"
git push GitHub master
echo ""

# Bitbucket
echo "-- Bitbucket --"
git push Bitbucket master
echo ""

# Sourceforge
echo "-- Sourceforge --"
git push Sourceforge master

echo ""

# Gitorius
git config --global user.name "mutek"
git config --global user.email mutek@riseup.net
echo "-- Gitorius --"
git push Gitorius master

echo ""

# GoogleCode
git config --global user.name "mutek.android"
git config --global user.email mutek.android@gmail.com
echo "-- GoogleCode --"
echo "richiede la password momentanea generata in:"
echo "https://code.google.com/hosting/settings"
git push GoogleCode master

echo ""


echo "done! :)"


# official GitHub tips:
#
#Create a new repository on the command line
#
#touch README.md
#git init
#git add README.md
#git commit -m "first commit"
#git remote add origin https://github.com/mutek/$APPNAME.git
#git push -u origin master
#
#Push an existing repository from the command line
#
#git remote add origin https://github.com/mutek/$APPNAME.git
#git push -u origin master


