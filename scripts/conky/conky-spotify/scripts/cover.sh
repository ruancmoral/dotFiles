#!/bin/bash

id_current=$(cat ~/.scripts/conky/conky-spotify/current/current.txt)
id_new=`~/.scripts/conky/conky-spotify/scripts/id.sh`
cover=
imgurl=

if [ "$id_new" != "$id_current" ]; then

	cover=`ls ~/.scripts/conky/conky-spotify/covers | grep $id_new`

	if [ "$cover" == "" ]; then

	    imgurl=`~/.scripts/conky/conky-spotify/scripts/imgurl.sh $id_new`
	    wget -q -O ~/.conky/conky-spotify/covers/$id_new.jpg $imgurl &> /dev/null
	    rm wget-log #wget-logs are accumulated otherwise
	    cover=`ls ~/.scripts/conky/conky-spotify/covers | grep $id_new`
	fi

	if [ "$cover" != "" ]; then
		cp ~/.scripts/conky/conky-spotify/covers/$cover ~/.scripts/conky/conky-spotify/current/current.jpg
	else
		cp ~/.scripts/conky/conky-spotify/covers/empty.jpg ~/.scripts/conky/conky-spotify/current/current.jpg
	fi

	echo $id_new > ~/.scripts/conky/conky-spotify/current/current.txt
fi
