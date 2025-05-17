@echo off
echo Adding Serveo SSH key to known_hosts...

if not exist "%USERPROFILE%\.ssh" mkdir "%USERPROFILE%\.ssh"
ssh-keyscan -t rsa serveo.net >> "%USERPROFILE%\.ssh\known_hosts"

echo Done. You can now run the SSH tunnel without prompts.
pause
