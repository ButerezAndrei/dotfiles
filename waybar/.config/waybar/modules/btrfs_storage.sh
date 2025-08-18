#!/bin/bash

input_file=$(btrfs filesystem usage -h -T / 2>/dev/null)

device_size=$(echo "$input_file" | grep -oP 'Device size:\s+\K\S+')
free_estimated=$(echo "$input_file"| grep -oP 'Free \(estimated\):\s+\K\S+')

echo "$free_estimated"
