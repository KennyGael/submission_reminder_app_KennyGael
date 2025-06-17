# Submission Reminder App

This is a Linux shell script application that helps track and remind students of their pending assignment submissions.

## 📦 Files Included

- `create_environment.sh`: Creates the application folder and setup.
- `copilot_shell_script.sh`: Lets the user update the assignment name and rerun the reminder.
- `README.md`: This file, which explains how to run the app.

## 🛠️ How to Use

1. **Run the setup script**:
   ```bash
   bash create_environment.sh

It will prompt you for your name and create a folder like:

submission_reminder_Kenny
2. Go into the folder:

cd submission_reminder_Kenny
bash startup.sh

3. To change the assignment name:
Go back to the parent folder and run:

bash copilot_shell_script.sh

submission_reminder_Kenny/
├── app/
│   └── reminder.sh
├── modules/
│   └── functions.sh
├── assets/
│   └── submissions.txt
├── config/
│   └── config.env
└── startup.sh

👤 Author
Kenny Ishimwe
GitHub Username: KennyGael
