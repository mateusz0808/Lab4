#!/bin/bash

case "$1" in
    --date)
        date
        ;;
    --logs)
        if [ -z "$2" ]; then
            num_logs=100
        else
            num_logs=$2
        fi
        for (( i=1; i<=$num_logs; i++ )); do
            echo "log$i.txt, skrypt.sh, $(date)" > "log$i.txt"
        done
        ;;
    --help)
        echo "Usage:"
        echo "  skrypt.sh --date : Display current date"
        echo "  skrypt.sh --logs [N] : Create N log files with info"
        ;;
    *)
        echo "Invalid option. Use 'skrypt.sh --help' for usage."
        ;;
esac
