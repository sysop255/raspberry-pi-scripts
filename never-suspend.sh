#!/bin/bash
echo "Disabling power managent suspend modes..." 
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleeep.target

echo "ignoring HandleLidSwitch"
sudo sed -i -e 's/HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf 
sudo sed -i -e 's/HandleLidSwitch=hibernate/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf 
sudo systemd-inhibit --what=handle-lid-switch zenity --info --text='Lid switch suspend blocked while open' --ok-label=Close
