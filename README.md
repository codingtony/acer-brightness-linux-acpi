# Description
Scripts and configuration files for adjusting the brightness on laptop that are using an Intel video card.

The code was inspired by this thread
http://ubuntuforums.org/showthread.php?t=2033273

The script should work with all intel devices that exposes /sys/class/backlight/intel_backlight


##To install

* clone the repo
* sudo cp etc/acpi/events/* /etc/acpi/events/
* sudo cp etc/acpi/* /etc/acpi/
* sudo service acpid restart

##To detect what are your FN keys
start acpi_listen

Then press the brightness up and brightness down key.

on my laptop the output is like this for the **FN-Right key**

video DD02 00000086 00000000

and for the **FN-Left key**

video DD02 00000087 00000000

if on your laptop the output is different you will need to change 
the first line of the configuration files:
etc/acpi/events/acer-tm-brightness-down
etc/acpi/events/acer-tm-brightness-up

Don't forget to restart acpid when you change the files!
