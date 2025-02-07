#!/bin/sh
# Define a unique worker name for each miner (set this differently on each machine)
WORKER_NAME="Y9-001"  # Change this for each miner

# Download the config file from GitHub
curl -o ~/ccminer/onlineconfig.json https://raw.githubusercontent.com/saijame-art/miner/refs/heads/main/onlineconfig.json

# Replace "user" field in onlineconfig.json with the wallet and unique worker name
sed -i "s/\"user\": \"[^\"]*\"/\"user\": \"RPfk15ohBBFNKWgTC3jxaiQvnmjEWVFuMf.$WORKER_NAME\"/" ~/ccminer/onlineconfig.json

# Run ccminer with the updated config file
~/ccminer/ccminer -c ~/ccminer/onlineconfig.json

