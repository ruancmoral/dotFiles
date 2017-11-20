
#!/bin/bash

id_current=$(cat ~/.config/conky/scripts/conky-spotify/current/current.txt)
id_new=`~/.config/conky/scripts/conky-spotify/spotify-id.sh`
cover=
imgurl=

if [ "$id_new" != "$id_current" ]; then
    cover=`ls ~/.config/conky/scripts/conky-spotify/covers | grep $id_new`
    if [ "$cover" == "" ]; then
        imgurl=`~/.config/conky/scripts/conky-spotify/spotify-imgurl.sh $id_new`
        wget -q -O ~/.config/conky/scripts/conky-spotify/$id_new.jpg $imgurl &> /dev/null
        rm wget-log #wget-logs are accumulated otherwise
        cover=`ls ~/.config/conky/scripts/conky-spotify/covers | grep $id_new`
    fi
    if [ "$cover" != "" ]; then
        cp ~/.config/conky/scripts/conky-spotify/covers/$cover ~/.config/conky/scripts/conky-spotify/current.jpg
    else
        cp ~/.config/conky/scripts/conky-spotify/covers/empty.jpg ~/.config/conky/scripts/conky-spotify/current/current.jpg

    fi
    echo $id_new > ~/.config/conky/scripts/conky-spotify/current/current.txt
fi
