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

secure_data
