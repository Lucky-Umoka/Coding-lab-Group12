#!/bin/bash

process_vitals() {
    echo "Processing critical alerts..."

    mkdir -p reports

    > reports/critical_alerts.txt

    echo "Timestamp | Device_ID | Value" >> reports/critical_alerts.txt
    echo "--------------------------------" >> reports/critical_alerts.txt

    grep "CRITICAL" active_logs/heart_rate.log | \
    awk -F',' '{print $1 " | " $2 " | " $3}' \
    >> reports/critical_alerts.txt

    grep "CRITICAL" active_logs/temperature.log | \
    awk -F',' '{print $1 " | " $2 " | " $3}' \
    >> reports/critical_alerts.txt

    echo "Report generated successfully."
}

process_vitals

water_audit() {

    echo "Running water usage audit..."

    

    logfile="active_logs/water_usage.log"

    

    if [ -f "$logfile" ]; then

        awk -F',' '/ICU_WATER_RESERVE/ {sum += $3; count++} END {

            printf "=== ICU Water Usage Summary ===\n"

            printf "Total Readings : %d\n", count

            printf "Average Usage  : %.2f\n", sum/count

        }' "$logfile"

    else

        echo "Water log file not found."

    fi

}

# --- Execution ---


water_audit

