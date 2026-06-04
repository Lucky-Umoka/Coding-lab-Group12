#!/bin/bash

process_vitals() {
    echo "Processing critical alerts..."
    mkdir -p reports
    > reports/critical_alerts.txt
    echo "Timestamp | Device_ID | Value" >> reports/critical_alerts.txt
    echo "--------------------------------" >> reports/critical_alerts.txt

    if [ -f "active_logs/heart_rate_log.log" ]; then
        grep "CRITICAL" active_logs/heart_rate_log.log | awk -F' \| ' '{print $1 " | " $2 " | " $3}' >> reports/critical_alerts.txt
    fi

    if [ -f "active_logs/temperature_log.log" ]; then
        grep "CRITICAL" active_logs/temperature_log.log | awk -F' \| ' '{print $1 " | " $2 " | " $3}' >> reports/critical_alerts.txt
    fi

    echo "Report generated successfully."
}

water_audit() {
    echo "Running water usage audit..."

    logfile="active_logs/water_usage_log.log"

    if [ -f "$logfile" ]; then
        awk -F' \| ' '/ICU_WATER_RESERVE/ {sum += $3; count++} END {
            printf "=== ICU Water Usage Summary ===\n"
            printf "Total Readings : %d\n", count
            printf "Average Usage  : %.2f\n", sum/count
        }' "$logfile"
    else
        echo "Water log file not found."
    fi
}

# --- Execution ---
process_vitals




water_audit
