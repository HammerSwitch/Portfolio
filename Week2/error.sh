
#!/bin/bash
secret='shhh' #Don't tell anyone!
read -sp "what's the secret code?" REPLY


#if the user types in the correct secret, tell them they got it right!

if [ "$secret" = $REPLY ]; then

    echo "You got it right!" 

else     echo "You got it wrong"

fi

case $REPLY in

shhh)

    echo "you have unlocked the secret menu!"

    #TODO: add a secret menu for people in the know.

    ;;
    
*)

    echo "Go Away!" #people who get it wrong need to be told to go away!

    ;;


esac