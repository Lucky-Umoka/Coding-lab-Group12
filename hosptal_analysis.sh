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
