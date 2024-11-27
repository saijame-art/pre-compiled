#!/bin/sh
# Define a unique worker name for each miner (set this differently on each machine)
WORKER_NAME="OppoA83-005"  # Change this for each miner

# Download the config file from GitHub
curl -o ~/ccminer/onlineconfig.json https://raw.githubusercontent.com/saijame-art/miner/refs/heads/main/onlineconfig.json

# Replace "user" field in onlineconfig.json with the wallet and unique worker name
sed -i "s/\"user\": \"[^\"]*\"/\"user\": \"RQ5XXjp6LrdZr6HCJCP6fLqVVWY8eF4MuB.$WORKER_NAME\"/" ~/ccminer/onlineconfig.json

# Run ccminer with the updated config file
~/ccminer/ccminer -c ~/ccminer/onlineconfig.json

