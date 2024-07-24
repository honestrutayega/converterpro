#!/bin/bash
# text_decode.sh - Decodes text from a specified encoding (default UTF-8)

if [ -z "$1" ]; then
    echo "Usage: $0 <text_to_decode>"
    exit 1
fi

echo -n "$1" | iconv -f UTF-8
