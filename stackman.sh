#!/bin/bash
function stackman() {
    echo "
    _____ _             _                          
    /  ___| |           | |                         
    \ \`--.| |_ __ _  ___| | ___ __ ___   __ _ _ __  
    \`--. \ __/ _\` |/ __| |/ / \'_ \` _ \ / _\` | \'_ \\ 
    /\\__/ / || (_| | (__|   <| | | | | | (_| | | | |
    \\____/ \\__\\__,_|\\___|_|\\_\\_| |_| |_|\\__,_|_| |_|                                              
    "

    echo "[1] (MERN) MongoDB, ExpressJS, ReactJS, NodeJS"
    # echo "[2] (MEAN) MongoDB, ExpressJS, AngularJS, NodeJS"
    # echo "[3] (MEVN) MongoDB, ExpressJS, VueJS, NodeJS"
    # echo "[4] Custom"

    read stack_choice

    case $stack_choice in
        1)
            echo "You chose MERN"
            svn checkout https://github.com/rcoleworld/stackman-templates/trunk/mernstack 
            npm install --prefix ./mernstack/api 
            echo "API dependencies finished installing!"
            npm install --prefix ./mernstack/frontend
            echo "Client dependencies finished installing!"
            ;;
        # 2)
        #     echo "You chose MEAN"
        #     ;;
        # 3)
        #     echo "You chose MEVN"
        #     ;;
        # 4)
        #     echo "You chose custom"
        #     ;;
        *)
            echo "Invalid choice"
            ;;
    esac
}
