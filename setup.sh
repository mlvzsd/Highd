#! /bin/sh

if [ `whoami` != 'root' ]; then
	echo "Este script requer privilégios de super usúario"
	exit 126
fi

if ! [ -s 30_os-prober ]; then
	echo "arquivo '30_os-probe' não encontrado ou vazio, instalação interrompida"
	exit 1
fi

if ! [ -s grub ]
then
	echo "arquivo 'grub' não encontrado ou vazio, instalação interrompida"
	exit 1
fi

mv 30_os-prober /etc/grub.d/30_os-prober
mv grub /etc/default/grub

update-grub

