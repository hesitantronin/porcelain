#!/bin/bash

# This program will start a menu to select a script to run


# Main menu loop
while true; do

    # Print logo to terminal
    echo "                                                
                    #+*#@                        
              @#=..     ..+@%@
          #+.              -%@@
       @*.                 +%@@@@
     %*:               -@@@@@@@%@@
   @%###.           -@@@+:.:+%#+%@
  @@@%%%*=+=.     :@@#+     .-  -@@
  @@%@%%#+=+@@@*  +##+    .:=   *%@
  @@@%@@@@@@@@@@= ..   ..       *@@@
  @@@@@@:   .%@@@.              .%@@
  @@@@#      .-#%+              .+@@     ____                    _       _   
  @@@@%.  :#-  .%@-    .        +%@@    |  _ \ ___  _ __ ___ ___| | __ _(_)_ __ 
   @@@@@@#+.   .%@#           .+#%%@    | |_) / _ \| '__/ __/ _ \ |/ _  | | '_ \ 
    @@@@@###-...*@%- .*@@*     :*%@@    |  __/ (_) | | | (_|  __/ | (_| | | | | |
    @@@@@@@@#*-.:%@@@@@+       :+%@@    |_|   \___/|_|  \___\___|_|\__,_|_|_| |_|
     @@@@@@@@%**-*@@@@:      .-+#@@@
       @@@@@@@@%%#%@%:  -*#+-=#%@@@
        @@@@@@@%@@@@@@@=  .@%@%#@@@
         @@@@@@@@@@@#%%%@@*-...*@@@
           @@@@@@@@@@@*:       *@@
             @@@@@@@@+=.     .*@@@
              @@@@@@@@@%*=++*%@@
                 @@@@@@@@@@@@@
                      @@@
    "
    echo -e "\nWelcome to porcelain!\n"

    # Options
    echo -e "Please select a script to run:\n"
    echo "[1] Run the script to install the necessary packages"
    echo "[2] Run the script to reveal the OS of the machine"
    echo "[3] Run python script"
    echo -e "[0] Exit porcelain\n"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Running the script to install the necessary packages..."
            bash scripts/install.sh

            if [ $? -eq 0 ]; then
                echo "Script ran successfully!"
            else
                echo "An error occurred while running the script."
            fi

            read -p "Press [Enter] to continue..."
            ;;

        2)
            echo "Running the script to reveal the OS of the machine..."
            bash scripts/reveal-OS.sh

            if [ $? -eq 0 ]; then
                echo "Script ran successfully!"
            else
                echo "An error occurred while running the script."
            fi

            read -p "Press [Enter] to continue..."
            ;;

        3)
            echo "Running python test script"
            python3 scripts/networks/hello.py

            if [ $? -eq 0 ]; then
                echo "Python issa working :)"
            else
                echo "missing dependency?" 
            fi

            read -p "Press [Enter] to continue..."
            ;;

        0)
            echo "Exiting..."
            exit 0
            ;;
            
        *)
            echo "Invalid choice."

            read -p "Press [Enter] to continue..."
            ;;
    esac

    clear
done



