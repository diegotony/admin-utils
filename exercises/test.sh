#!/bin/bash
# test
validAlphaNum()
{
	# esta validacion solo es para letras y numeros
	validchars="$(echo $1 | sed -e 's\[^[:alnum:]]\\g')"
	if [ "$validchars" = "$1" ] ; then
		return 0
	else
		return 1
	fi
}

echo -n "Enter input: "
read input

if ! validAlphaNum "$input" ; then
	echo "Please enter only letters and numbers. " >&2
	exit 1
else
	echo "Input is valid"
fi

exit 0
