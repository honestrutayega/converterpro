#!/bin/bash
# base64_decode.sh - Decodes Base64 encoded text

if [ -z "$1" ]; then
    echo "Usage: $0 <text_to_decode>"
    exit 1
fi

echo -n "$1" | base64 --decode
