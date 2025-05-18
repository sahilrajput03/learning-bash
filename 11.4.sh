#!/bin/bash -x
# we enable debug mode with above -x

# 🚀 Kill process using `pkill` to match process name on exit

trap 'pkill -f tailwind' exit

# Run tailwindcss with watch mode and send it to background
tailwindcss -w -i ./app/static/src/main.css -o ./app/static/dist/main.css --minify &

flask run
