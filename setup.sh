#! /bin/sh

if [ `whoami` != 'root' ]
then
	echo "Este script requer privilégios de super usúario"
	exit
fi

if [ -s 30_os-prober ]
then
	mv 30_os-prober /etc/grub.d/
else
	echo "arquivo '30_os-probe' não encontrado ou vazio, instalação interrompida"
	exit
fi

if [ -s grub ]
then
	mv grub /etc/default/
else
	echo "arquivo 'grub' não encontrado ou vazio, instalação interrompida"
	exit
fi

update-grub



