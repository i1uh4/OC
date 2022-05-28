echo "Input the directory "
read DIR

if [ -e /${DIR} ];
then
	echo -e "Directory exists \n"
	echo "Input the name of the file "
	read PTH
	if [ -e /${DIR}/${PTH} ];
	then
		file -b /${DIR}/${PTH}
		echo "The path to the file or directory is /${DIR}/${PTH}"
	else
		echo "File doesn't exist"
	fi
else
	echo "Directory doesn't exist"
fi
