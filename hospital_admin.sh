#!/bin/bash
initialize_system() {
    echo "Initializing KNH system environment..."
    local directories=("active_logs" "archived_logs" "reports")
    for dir in "${directories[@]}"; do
        if [ -d "$dir" ]; then
            echo "Directory '$dir' already exists. Skipping."
        else
            echo "Creating $dir directory..."
            mkdir -p "$dir"
        fi
    done
    echo "System initialization complete."
}

secure_data() {
    echo "Securing active_logs directory..."

    # Set permissions: Owner can read and write only
    chmod 600 active_logs

    echo "Permissions applied: Owner has read and write access only."
    echo "Current permissions for active_logs:"

    # Display the new permissions to the user
    ls -l | grep active_logs
}



# --- Member 3: Interactive Menu (while loop) ---

while true
do
    echo ""
    echo "================================"
    echo "KNH Hospital Admin Dashboard"
    echo "================================"
    echo "1. Initialize system"
    echo "2. Secure Data"
    echo "3. Run all"
    echo "4. Exit"

    read -p "Choose an option: " choice

    case $choice in
        1)
            initialize_system
            echo "System initialization completed."
            ;;
        2)
            secure_data
            echo "Security update completed."
            ;;
        3)
            initialize_system
            secure_data
            echo "System Environment secured."
            ;;
        4)
            echo "Exiting dashboard..."
            break
            ;;
        *)
            echo "Invalid option. Please choose 1-4."
            ;;
    esac

done
