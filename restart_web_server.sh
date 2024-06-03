#!/bin/bash

##############################################
# Description: Purpose To restart a service, ensuring it runs smoothly.
# Author : Md Rashid Ahmad
# Components:
   # sudo systemctl restart $SERVICE_NAME: Restarts the specified service.
   # systemctl is-active --quiet $SERVICE_NAME: Checks if the service is active.
##############################################


# Function to restart a web server

restart_web_server() {

    SERVICE_NAME="apache2"
    echo "Restarting $SERVICE_NAME."
    sudo systemctl restart $SERVICE_NAME

    # Check if the service restarted successfully
    if systemctl is-active --quiet $SERVICE_NAME; then
        echo "$SERVICE_NAME restarted successfully."
    else
        echo "Failed to restart $SERVICE_NAME."
        
    fi
    
}

# Main script execution

echo "Starting web server restart..."
restart_web_server

echo "Web server restart completed."

