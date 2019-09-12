#!/bin/bash
#automatizacion de git
clear
echo " ****************************** "
echo " **    Menu  GitHub          ** "
echo " ****************************** "
echo ""
echo ""
echo " 1.- Crear repositorio desde cero"
echo " 2.- Subir 1 archivo "
echo " 3.- Salir"
echo ""
echo ""
echo "Ingrese una opcion"
read opcion
if [ $opcion = 1 ];
then
	echo "ingrese texto del repositorio (README)"
	read texto
	echo "Ingrese el nombre de usuario de github"
	read usuario
	echo "ingrese el contenido del Commit"
	read commit
	echo "Ingrese el nombre del repositorio en github"
	read repo
	# Comienzo los comandos
	echo "# $texto " >> README.md
	git init
	git add README.md
	git commit -m " $commit "
	git remote add origin https://github.com/$usuario/$repo.git
	git push -u origin master
fi

if [ $opcion = 2 ];
then 
	ls
	echo "ingrese el contenido del Commit"
        read commit
        echo "Ingrese el nombre del archivo a subir"
	read archivo
	#ejecuto comandos
	git add $archivo
        git commit -m " $commit "
        git push -u origin master
fi






	

