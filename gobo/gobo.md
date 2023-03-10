## Installing Gobo Linux
[Link to Gobo Linux website](https://gobolinux.org/index.html#content)

---

### Installing  

* Create a bootable image of Gobo Linux  
* Boot live image  
* Set initial locale settings  
* Insert flash drive containing boot-part.sh and wpa_supplicant.sh script  
* Use `lsblk` to see what the name of the drive is  

Create a directory to mount the drive to:  
```
mkdir /Media/directory name`
```

Mount the drive with the following commands:  
```
mount /dev/device name /Media/directory name
```

Run boot-part.sh to partition the hard drive:  
```
cd /Media/directory name
bash boot-part.sh
```
  
Run the installer by typing `Installer` into the terminal. Set locale settings accordingly and set the following parameters:
  
* Hostname: ETD-Thinkpad
* User: student
* User name: Student
* Password: *password*
* Enable super user: yes

*Remember to click add user.*

---

### Setting up internet connection

* Once the OS has installed, use the command `startx` to go into the GUI.
  
* Create a directory and mount the USB drive containing the scripts using the same commands as before.

Enter this command to create a configuration file for wpa_supplicant:  
```
Wpa_passphrase SSID password > /etc/wpa_supplicant.conf`
```

Open the config and remove the commented line containing the unencrypted passcode:  
```
nano /etc/wpa_supplicant.conf
```
  
Copy the wpa_supplicant script to the system:  
```
cp /Media/directory name/path to script /
```

Rename the script:  
```
mv /wpa_supplicant.sh /wpa
```

Make the script executable:  
```
  cd /
  chmod +x wpa_supplicant.sh
```
 
Enter `/wpa` in terminal to run script and enable internet connection.
