#!/bin/bash

# Define the container name or ID
container_name_or_id="a816ecd3b811"

# Define the log directory
log_dir="/root/Docker_Project/log_dir"

# Create the log directory if it doesn't exist
mkdir -p "$log_dir"

# Generate a timestamp (or a unique identifier)
timestamp=$(date +%Y%m%d%H%M%S)

# Define the log file name with the timestamp
log_file="$log_dir/docker_logs_$timestamp.log"

# Run docker logs and save to the log file
docker logs "a816ecd3b811" > "$log_file"
