#!/bin/bash
__project_created() {
    case $1 in 
    "mern")
        echo "
        ___  ___ ___________ _   _   _____ _____ ___  _____  _   __
        |  \\/  ||  ___| ___ \\ \\ | | /  ___|_   _/ _ \\/  __ \\| | / /
        | .  . || |__ | |_/ /  \\| | \ \`--.  | |/ /_\\ \\ /  \\/| |/ / 
        | |\\/| ||  __||    /| . \` |  \`--. \\ | ||  _  | |    |    \\ 
        | |  | || |___| |\\ \\| |\\  | /\\__/ / | || | | | \__/\\| |\\  \\
        \\_|  |_/\\____/\\_| \\_\\_| \\_/ \\____/  \\_/\\_| |_/\\____/\\_| \\_/                                                  
        "
    esac
}

__welcome_msg() {
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
    # echo "[4] (LAMPY) Linux, Apache, MySQL Python"
    echo "Any other key to exit"
}

__mern() {
    echo "You chose MERN"
    svn checkout https://github.com/rcoleworld/stackman-templates/trunk/mernstack
    clear
    echo "Folder downloaded!"
    git init ./mernstack
    clear
    npm install --prefix ./mernstack/api
    clear
    echo "API dependencies finished installing!"
    npm install --prefix ./mernstack/frontend
    echo "Client dependencies finished installing!"
    clear
    echo "Project Name: "
    read project_name
    mv mernstack $project_name
    clear
    __project_created "mern"
}

__mean() {
    echo "You chose MEAN"
    echo "Support for MEAN stacks coming soon!"
}

__mevn() {
    echo "You chose MEVN"
    echo "Support for MEVN stacks coming soon!"
}

__lampy() {
    echo "You chose LAMPY"
    echo "Support for LAMPY stacks coming soon!"
}

stackman() {
    __welcome_msg
    read stack_choice

    case $stack_choice in
        1)
            __mern
            ;;
        # 2)
        #     __mean
        #     ;;
        # 3)
        #     __mevn
        #     ;;
        # 4)
        #     __lampy
        #     ;;
        *)
            echo "Exited"
            ;;
    esac
}