#!/bin/sh
# ==========================================================================================
# SCRIPT NAME    : [e.g., system_audit.sh]
# DESCRIPTION    : [Brief explanation of what the script does]
# AUTHOR         : [Your Name]
# DATE CREATED   : [YYYY-MM-DD]
# USAGE          : sh script_name.sh -t <target_ip> -p <port>
#
# SECURITY NOTICE:
# This tool is created for educational and authorized testing purposes ONLY.
# Do not run this script against target systems without explicit authorization.
# ==========================================================================================

# Safety flag: Exit immediately if any command returns a non-zero (error) status
set -e

# Default variables
TARGET_IP=""
PORT="80"

# Print usage helper
usage() {
    echo "Usage: $0 -t <target_ip> [-p <port>]"
    echo "  -t  Target IP address or domain (Required)"
    echo "  -p  Target port number (Default: 80)"
    echo "  -h  Display this help message"
    exit 1
}

# Portable POSIX option parsing
while [ $# -gt 0 ]; do
    case "$1" in
        -t|--target)
            TARGET_IP="$2"
            shift 2
            ;;
        -p|--port)
            PORT="$2"
            shift 2
            ;;
        -h|--help)
            usage
            ;;
        *)
            echo "[!] Unknown argument: $1"
            usage
            ;;
    esac
done

# Signal trap for safe exit on Ctrl+C (SIGINT) or termination (SIGTERM)
cleanup() {
    echo "\n[!] Process interrupted by user. Exiting safely."
    exit 0
}
trap cleanup INT TERM

main() {
    # Ensure required arguments are provided
    if [ -z "$TARGET_IP" ]; then
        echo "[!] Error: Target IP is required."
        usage
    fi

    echo "[*] Initializing security utility against ${TARGET_IP}:${PORT}..."

    # Script execution logic here
}

main "$@"
