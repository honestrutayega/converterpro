#!/bin/bash
# base64_encode.sh - Encodes input text to Base64

if [ -z "$1" ]; then
    echo "Usage: $0 <text_to_encode>"
    exit 1
fi

echo -n "$1" | base64
