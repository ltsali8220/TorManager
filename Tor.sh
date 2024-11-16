#!/bin/bash

# Function to check if Tor Browser is installed
check_tor_installed() {
    if command -v tor >/dev/null 2>&1; then
        echo "Tor is already installed."
        return 0  # Tor is installed
    else
        echo "Tor is not installed."
        return 1  # Tor is not installed
    fi
}

# Function to check if Tor is enabled
check_tor_enabled() {
    if systemctl is-active --quiet tor; then
        echo "Tor is running and enabled."
        return 0  # Tor is enabled and running
    else
        echo "Tor is not running or enabled."
        return 1  # Tor is not enabled
    fi
}

# Function to install Tor Browser
install_tor() {
    echo "Attempting to install Tor..."
    # For Debian-based systems
    sudo apt update
    sudo apt install -y tor
    echo "Tor has been installed."
}

# Function to enable Tor
enable_tor() {
    echo "Enabling Tor service..."
    sudo systemctl enable tor
    sudo systemctl start tor
    echo "Tor has been enabled and started."
}

# Main flow based on the decision tree

echo "Starting the Tor Browser setup process..."

# Step 1: Check if Tor is installed
if ! check_tor_installed; then
    # Step 2: Ask the user to install Tor if not installed
    read -p "Tor is not installed. Would you like to install it? (yes/no): " install_choice
    if [[ "$install_choice" == "yes" ]]; then
        install_tor
    else
        echo "Exiting script. Tor is required."
        exit 1
    fi
fi

# Step 3: Check if Tor is enabled and running
if ! check_tor_enabled; then
    # Step 4: Ask the user to enable Tor if not running
    read -p "Tor is not enabled. Would you like to enable and start it? (yes/no): " enable_choice
    if [[ "$enable_choice" == "yes" ]]; then
        enable_tor
    else
        echo "Exiting script. Tor needs to be enabled and running."
        exit 1
    fi
fi

# Final confirmation and summary
echo "Tor Browser setup is complete. You are ready to use Tor."
