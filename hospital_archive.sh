#!/bin/bash

echo "Archiving logs..."

timestamp=$(date +"%Y%m%d_%H%M%S")

mv active_logs/heart_rate_log.log archived_logs/heart_rate_log_$timestamp.log
mv active_logs/temperature_log.log archived_logs/temperature_log_$timestamp.log
mv active_logs/water_usage_log.log archived_logs/water_usage_log_$timestamp.log

touch active_logs/heart_rate_log.log
touch active_logs/temperature_log.log
touch active_logs/water_usage_log.log

echo "Archive complete."
