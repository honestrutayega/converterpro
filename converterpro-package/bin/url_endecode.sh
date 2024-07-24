#!/bin/bash
# url_encode_decode.sh - Encodes or decodes URL strings

function url_encode() {
    local raw_url="$1"
    echo -n "$raw_url" | jq -sRr @uri
}

function url_decode() {
    local encoded_url="$1"
    echo -n "$encoded_url" | jq -sRr @uri
}

if [ "$1" == "encode" ]; then
    if [ -z "$2" ]; then
        echo "Usage: $0 encode <text_to_encode>"
        exit 1
    fi
    url_encode "$2"
elif [ "$1" == "decode" ]; then
    if [ -z "$2" ]; then
        echo "Usage: $0 decode <text_to_decode>"
        exit 1
    fi
    url_decode "$2"
else
    echo "Usage: $0 <encode|decode> <text>"
    exit 1
fi
