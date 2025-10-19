# Grub-theme-changer
a script that picks a random theme from the `/boot/grub/themes` folder for Grub to use on boot

ANY AND ALL CREDIT GOES TO https://github.com/elbachir-one FOR CREATING THE SCRIPT AND TEACHING ME HOW TO USE AND APPLY IT!
Also thanks for helping and teaching me how to fix problems with Arch in the Arch Community Discord.

Installation: clone the repo and copy the script using:
`sudo cp grub_theme_changer.sh /usr/local/bin/random-grub-theme`
make the script executable using:
`chmod +x grub_theme_changer.sh`

Copy the systemd service to `/etc/systemd/system/` with:
`sudo cp random-grub-theme.service /etc/systemd/system/system/random-grub-theme.service`

and enable it using:
`sudo systemctl enable random-grub-theme.service`

Reboot.

Check the status after reboot using:
`systemctl status random-grub-theme.service`

You should see a random theme picked from the `/boot/grub/themes` folder each time you boot. 
You can add however many themes as you want to the folder, without needing to reinstall the script.
