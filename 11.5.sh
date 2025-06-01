#!/usr/bin/env bash -x
# we enable debug mode with above -x

# 🚀 Kill process using `pkill` to match process name on exit

trap 'pkill -f tailwind' exit

# Run tailwindcss with watch mode and send it to background
tailwindcss -w -i ./app/static/src/main.css -o ./app/static/dist/main.css --minify &

flask run

# Another intersting usage found in cloud-init docs to stop python server on exiting qemu instance shell command:
# Check @ https://github.com/sahilrajput03/config/blob/852bda337a6de7df6e767b01bffa3ee9835e9914/_linode/testing-cloud-init-with-qemu/with-archlinux-cloudimg/SCRIPT_QEMU.sh
