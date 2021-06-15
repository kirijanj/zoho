#!/bin/bash


echo "DesktopCentral Installing............................." >> output.txt
echo ""
	rm -rf /tmp/dcagent
	cd /tmp/
	mkdir dcagent 
	wget --user=sysadmin --password='Sy$LeT2K19' http://mac-img-1/Others/DC/User-DC/UBU-UserDC-686.zip > /dev/null 2>&1
	unzip  -d /tmp/dcagent UBU-UserDC-686.zip > /dev/null
	cd /tmp/dcagent/
	chmod 755 DesktopCentral_LinuxAgent.bin serverinfo.json LINUX_README.txt
	sudo /tmp/dcagent/DesktopCentral_LinuxAgent.bin -f > /dev/null
	echo ""
	cd /usr/local/desktopcentralagent/bin/
	./dcinventory assetscan 11
	./dcinventory assetscan 11
	./dcinventory assetscan 11

	