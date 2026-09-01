#!/usr/bin/env python3
"""=========================================================================================
## SCRIPT NAME    : [e.g., simple_port_scanner.py]
## DESCRIPTION    : [Brief explanation of what the script does]
## AUTHOR         : [Your Name]
## DATE CREATED   : [YYYY-MM-DD]
## USAGE          : python3 script_name.py -t <target_ip> -p <port>
##
## SECURITY NOTICE:
## This tool is created for educational and authorized testing purposes ONLY.
## Do not run this script against target systems without explicit authorization.
========================================================================================="""
import sys
import argparse

def parse_args():
    """Parse and validate command-line flags."""
    parser = argparse.ArgumentParser(
        description="Educational Security Tool Template",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )
    
    # Standard security tool flags
    parser.add_argument(
        "-t", "--target", 
        type=str, 
        required=True, 
        help="Target IP address or domain"
    )
    parser.add_argument(
        "-p", "--port", 
        type=int, 
        default=80, 
        help="Target port number"
    )
    
    return parser.parse_args()

def main():
    args = parse_args()
    
    print(f"[*] Initializing security utility against {args.target}:{args.port}...")
    
    # Script execution logic here

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n[!] Process interrupted by user. Exiting safely.")
        sys.exit(0)
    except Exception as e:
        print(f"[!] Critical Error: {e}", file=sys.stderr)
        sys.exit(1)
