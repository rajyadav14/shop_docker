#!/bin/bash

# Define the range of ports to check
start_port=49152
end_port=65535

for port in $(seq "$start_port" "$end_port"); do
  (echo > /dev/tcp/127.0.0.1/$port) >/dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "Port $port is available"
    exit
  fi
done

echo "No available ports found in the specified range."

