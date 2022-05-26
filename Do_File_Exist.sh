echo "Input the directory "
read DIR
echo "Input the path to the file without expansion"
read PTH

if [ -e /${DIR} ];
then
	echo "Directory exists "
	if [ -e /${DIR}/${PTH} ];
	then
		file -f /${DIR}/${PTH}
		echo "The path to the file is /${DIR}/${PTH}"
	else
		echo "File doesn't exist"
	fi
else
	echo "Directory doesn't exist"
fi
