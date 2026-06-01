#!/bin/bash

secure_data() {
    echo "Securing active_logs directory..."

    # Set permissions: Owner can read and write only
    chmod 600 active_logs

    echo "Permissions applied: Owner has read and write access only."
    echo "Current permissions for active_logs:"

    # Display the new permissions to the user
    ls -l | grep active_logs
}

secure_data# Member 3 (The Orchestrator): Execution Logic
main() {
    echo "=================================================="
    echo "KNH Admin Administration Script"
    echo "=================================================="
    initialize_system
    secure_data
    echo "=================================================="
    echo "System Environment Secured: $(date)"
    echo "=================================================="
}

mainchmod +x hospital_admin.sh
git add hospital_admin.sh
git commit -m "feat: hospital_admin.sh completed by members 1, 2, and 3"
git checkout main
git merge admin-setup
