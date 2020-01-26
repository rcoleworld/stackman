#!/bin/bash
__project_created() {
    echo "
    ______          _           _     _____                _           _ _ 
    | ___ \\        (_)         | |   /  __ \\              | |         | | |
    | |_/ / __ ___  _  ___  ___| |_  | /  \\/_ __ ___  __ _| |_ ___  __| | |
    |  __/ '__/ _ \\| |/ _ \\/ __| __| | |   | '__/ _ \\/ _\` | __/ _ \\/ _\` | |
    | |  | | | (_) | |  __/ (__| |_  | \\__/\\ | |  __/ (_| | ||  __/ (_| |_|
    \\_|  |_|  \\___/| |\\___|\\___|\\__|  \____/_|  \___|\\__,_|\\__\\___|\\__,_(_)
                _/ |                                                     
                |__/                                                      
    "
    
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
    echo "[2] (MEAN) MongoDB, ExpressJS, AngularJS, NodeJS"
    echo "[3] (MEVN) MongoDB, ExpressJS, VueJS, NodeJS"
    echo "[4] (LAMPY) Linux, Apache, MySQL Python"
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
    __project_created
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
        2)
            __mean
            ;;
        3)
            __mevn
            ;;
        4)
            __laby
            ;;
        *)
            echo "Exited"
            ;;
    esac
}
