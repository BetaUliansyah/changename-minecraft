#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Isikan nama baru sebagai argumen"
    exit 1
fi

PROFILE=~/.minecraft/launcher_profiles.json
OLDNAME=`grep displayName $PROFILE | cut -d'"' -f4`
echo -e "Old name: $OLDNAME"
sed -i -- "s/$OLDNAME/$1/g" $PROFILE
echo -e "New name: $1"
echo -e "Read file $PROFILE: `grep displayName $PROFILE | cut -d'"' -f4`"
chmod 400 $PROFILE
