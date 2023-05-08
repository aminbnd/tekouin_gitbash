#!/bin/bash
IFS=":"
while read -r username password uid gid fullname homedir shell; do
    echo "The user $username is part of the $gid gang, lives in $homedir and rides $shell."
    echo "User ID's place is protected by the passcode $password, more info about the user here: $fullname"
    echo "-----------------------------------"
done < /etc/passwd
