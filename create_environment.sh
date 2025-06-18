# Author: Kenny Ishimwe
#!/bin/bash

# Ask for your name
read -p "Enter your name: " name
main_dir="submission_reminder_${name}"

# Create folder structure
mkdir -p ${main_dir}/{app,modules,assets,config}

# app/reminder.sh
cat << 'EOF' > ${main_dir}/app/reminder.sh
#!/bin/bash
source ./config/config.env
source ./modules/functions.sh
echo "Checking pending submissions for assignment: $ASSIGNMENT"
check_pending_submissions "./assets/submissions.txt"
EOF

# modules/functions.sh
cat << 'EOF' > ${main_dir}/modules/functions.sh
#!/bin/bash
check_pending_submissions() {
    while IFS=, read -r name status; do
        if [[ "$status" == " pending" ]]; then
            echo "$name has not submitted."
        fi
    done < "$1"
}
EOF

# config/config.env
cat << 'EOF' > ${main_dir}/config/config.env
COURSE=Linux101
ASSIGNMENT=Assignment1
EOF

# assets/submissions.txt
cat << 'EOF' > ${main_dir}/assets/submissions.txt
John Doe, submitted
Jane Smith, pending
Alice Johnson, submitted
Bob Brown, pending
Kenny Ishimwe, pending
Grace Uwase, submitted
EOF

# startup.sh
cat << 'EOF' > ${main_dir}/startup.sh
#!/bin/bash
cd "$(dirname "$0")"
bash ./app/reminder.sh
EOF

# Make all .sh files executable
find ${main_dir} -type f -name "*.sh" -exec chmod +x {} \;

echo "✅ Environment created in $main_dir"
