#!/bin/bash
echo Testi 1:
if [ -d '/home/frank/Scriptit2' ] 
then echo löytyy
else echo ei löydy hakemistoa
fi

echo  testi1 test yrityksellä:

test [ -d '/home/frank/Scriptit' ] && echo löytyy hakemisto || echo ei löydy hakemistoa

echo test2:


test  -e vertailu1.sh  && echo löytyy tiedosto || echo löytyy tiedosto


echo testi3:
PWD=/temppi2

[ '/temppi' = $PWD ] && echo sama osoite || echo eri osoite

echo testi4:
#Miksi näin päin?

[ $1 != 'secret' ] && echo parametri 1 eri || echo parametri 1 sama

echo testi5:
bar=2

onko pienempi kuin bar

[ 55 -lt $bar ] && echo bar isompi  || echo bar pienempi

echo testi6:
foo=400

[ $foo -ge 1000 ]  && echo foo isompi tai yhtäsuuri  || echo foo pienempi

echo testi7:
bar=xxx

#onko bar muuttuja aikaisemmmin aakkosissa

[[ "abc" < $bar ]] && echo bar muuttuja myöhemmmin aakkosissa  || echo bar ekana

echo testi Regular_file? 8:
tied=taitotalo_tiedot.sh

[ -f $tied ] && echo tiedosto on regular_file  || echo tiedosto ei ole regular_file

echo testi 9:
# Onko tiedosto readable?

[ -r $tied ] && echo tiedosto on luettava  || echo tiedosto ei ole luettava



echo testi10:
tied2=tiedlist.sh

[[ $tied1 -nt $tied2 ]] && echo tied1 uudempi  || echo tied2 uudempi

echo testi11:
set -o nounset
[ -o nounset ] && echo nounset parametri asetettu  || echo nounset parametri ei asetettu 




