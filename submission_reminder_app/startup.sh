#!/bin/bash

# Print a startup message
echo "Starting the Submission Reminder App..."

# Check if the required files exist before starting
if [[ -f ./config/config.env ]]; then
    echo "config.env found."
else
    echo "config.env is missing."
fi

if [[ -f ./app/reminder.sh ]]; then
    echo "reminder.sh found."
else
    echo "reminder.sh is missing."
fi

# Run the reminder script if both files exist
if [[ -f ./config/config.env && -f ./app/reminder.sh ]]; then
    # Source the environment variables
    source ./config/config.env

    # Run the reminder script
    ./app/reminder.sh
else
    echo "Error: Required files are missing. Ensure config.env and reminder.sh are in place."
    exit 1
fi
