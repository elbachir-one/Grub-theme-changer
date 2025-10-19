# Grub Theme Changer

A simple script that picks a random theme from the `/boot/grub/themes` directory
for GRUB to use at boot.

---

### Credits

**All credit** goes to [elbachir-one](https://github.com/elbachir-one) for creating the original script and teaching me how to use and apply it!
Also, thanks to everyone in the **Arch Community Discord** for helping me learn and
fix issues with Arch Linux.

---

### Installation

1. **Clone the repository** and copy the script:
```sh
sudo cp grub_theme_changer.sh /usr/local/bin/random-grub-theme
```

2. **Make the script executable:**
```sh
sudo chmod +x /usr/local/bin/random-grub-theme
```

3. **Copy the systemd service file:**
```sh
sudo cp random-grub-theme.service /etc/systemd/system/random-grub-theme.service
```

4. **Enable the service:**
```sh
sudo systemctl enable random-grub-theme.service
```

5. **Reboot your system.**

---

### Verification

After reboot, check the service status with:
```sh
systemctl status random-grub-theme.service
```

You should see that a random theme has been selected from the `/boot/grub/themes` folder.
You can add as many themes as you like — no need to reinstall or modify the script.

---
