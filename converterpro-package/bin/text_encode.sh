#!/bin/bash
# text_encode.sh - Encodes text to a specified encoding (default UTF-8)

if [ -z "$1" ]; then
    echo "Usage: $0 <text_to_encode>"
    exit 1
fi

echo -n "$1" | iconv -t UTF-8
