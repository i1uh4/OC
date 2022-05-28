echo "Input the directory "
read DIR

if [ -e /${DIR} ];
then
	echo -e "Directory exists \n"
	echo "Input the name of the file "
	read PTH
	
	found=$( find . -depth -name $PTH )
	
	if [[ -n $found ]];
	then
		echo "File exists "
		file -b $found
		echo -e "The path to the file or directory is /${DIR}/${PTH} \n"
	else
		echo -e "File doesn't exist \n"
	fi
else
	echo -e "Directory doesn't exist \n"
fi	
