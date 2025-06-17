#!/bin/bash

read -p "Enter new assignment name: " new_assignment

sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=${new_assignment}/" submission_reminder_*YOURNAME*/config/config.env

echo "Assignment updated to: $new_assignment"
echo "Rerunning startup.sh..."

bash submission_reminder_*Kenny*/startup.sh
