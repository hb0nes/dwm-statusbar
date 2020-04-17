If you want color in your bar, get the proper patch for DWM.
https://dwm.suckless.org/patches/status2d/
If you don't want color, just comment or remove the COLOR= line.

Obviously, not all of these modules are going to work for you personally.
For example, one shell script run pamixer to get volume.
Use your own preferred method of finding volume.

Also, CPU temperature is based off of my own personal laptop's hwmon files.
Yours might be different. Try using the xsensors utility with strace to find out where it fetches your data :).
