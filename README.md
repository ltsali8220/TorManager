# Tor Manager - Privacy & Security Tool

Tor Manager is a privacy and security tool built using Bash scripts, designed to manage and automate the Tor network on your system. It enables users to quickly connect to the Tor network, configure proxies, and manage settings with ease. This tool is aimed at enhancing online privacy by routing traffic through Tor, making users anonymous on the internet.

## Features

- **Easy Setup:** Automatically configures the Tor service and ensures it's running.
- **Connect to Tor Network:** Provides a seamless way to connect to the Tor network for anonymous browsing.
- **Proxy Configuration:** Configures system-wide proxy settings (HTTP/HTTPS) to route traffic via Tor.
- **Start/Stop Tor Service:** Control the Tor service with simple commands to start or stop the Tor process.
- **Monitor Tor Status:** Check the status of the Tor service to ensure it is running correctly.
- **Log Management:** Track the status and activity of the Tor service with built-in logging.
- **Automatic Updates:** Regularly checks and applies updates for the Tor software.

## Requirements

- **Linux-based Operating System** (Tested on Ubuntu, but should work with other distros as well).
- **Tor** installed on the system.
- **Bash** as the scripting language.
- **Root privileges** for installing and starting services.

## Installation

1. **Clone the repository** to your local machine:

    ```bash
    git clone https://github.com/yourusername/tor-manager.git
    cd tor-manager
    ```

2. **Ensure Tor is installed** on your system. You can install Tor using your package manager:

    - On Ubuntu/Debian:

      ```bash
      sudo apt update
      sudo apt install tor
      ```

    - On CentOS/RHEL:

      ```bash
      sudo yum install tor
      ```

3. **Run the setup script** to configure Tor:

    ```bash
    chmod +x install.sh
    ./install.sh
    ```

## Usage

- **Start Tor:** To start the Tor service, use the following command:

    ```bash
    ./tor-manager.sh start
    ```

- **Stop Tor:** To stop the Tor service, use:

    ```bash
    ./tor-manager.sh stop
    ```

- **Check Tor Status:** To check if Tor is running, use:

    ```bash
    ./tor-manager.sh status
    ```

- **Set Proxy:** Configure your system to use the Tor proxy (SOCKS5) by using the following command:

    ```bash
    ./tor-manager.sh set-proxy
    ```

- **View Logs:** View the Tor service logs for troubleshooting and monitoring:

    ```bash
    ./tor-manager.sh view-logs
    ```



## Contributing

Contributions are welcome! If you have suggestions or improvements, please fork the repository, make your changes, and submit a pull request. Before contributing, please ensure that:

1. You have tested your changes locally.
2. You have updated the documentation (README) accordingly.

## Support

For support or questions regarding the usage of Tor Manager, feel free to open an issue on the GitHub repository, or contact me directly at [salivelu1012@gmail.com].

---
