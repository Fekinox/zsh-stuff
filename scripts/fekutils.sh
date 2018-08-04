#!/usr/bin/sh

# repchar
# head -c $1 < /dev/zero takes $1 null characters from /dev/zero
# tr '\0' $2 replaces all null characters with $2
function repchar () {
	echo $(head -c $1 < /dev/zero | tr '\0' $2)
}

function randnums () {
	echo $(tr -dc '0-9' < /dev/urandom | head -c $1)
}

function randalpha () {
	echo $(tr -dc 'A-Za-z' < /dev/urandom | head -c $1)
}

function randalnum () {
	echo $(tr -dc '0-9A-Za-z' < /dev/urandom | head -c $1)
}
