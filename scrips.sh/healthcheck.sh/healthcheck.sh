#!/bin/bash

# Function to check if Apache2 is running
check_apache() {
    apache2_status=$(systemctl is-active apache2)
    if [ "$apache2_status" = "active" ]; then
        echo "Apache2 is running."
    else
        echo "Apache2 is not running. Attempting to start..."
        systemctl start apache2
        sleep 2
        apache2_status=$(systemctl is-active apache2)
        if [ "$apache2_status" = "active" ]; then
            echo "Apache2 started successfully."
        else
            echo "Failed to start Apache2."
        fi
    fi
}