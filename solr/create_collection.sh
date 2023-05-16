#!/bin/bash

# Check if collection name argument exists
if [ -z "$1" ]; then
    echo "Collection name argument is missing."
    exit 1
fi

# Check if configuration path argument exists
if [ -z "$2" ]; then
    echo "Configuration path argument is missing."
    exit 1
fi

# Solr create command
solr create -c "$1" -d "$2"
