#!/bin/bash
#
# Attempt to keep GuldenD running at all times
# to stop this you have to kill the parent bash script
# killing GuldenD will just go into a loop
#  crontab entry to start at boot
#
#  @reboot sleep 30 ; cd /opt/gulden; /opt/gulden/guldenWrapper.sh 2>&1 >> start.log &


while true ;
  do 

    echo "Stopping GuldenD service"
    /opt/gulden/gulden/Gulden-cli -datadir=/opt/gulden/datadir stop
    sleep 5

    echo "Killing GuldenD"
    killall -9 GuldenD
    sleep 5
			          
    echo "Removing peers.dat"
    rm /opt/gulden/datadir/peers.dat
    sleep 5

    echo "Checking for Gulden update"
    sudo apt-get update
    sudo apt-get -y --allow-unauthenticated install gulden
    sleep 5

    echo "Starting GuldenD"
    /opt/gulden/gulden/GuldenD -datadir=/opt/gulden/datadir 
    echo `date`
						   
# don't be tempted to make this sleep too small, as if there is a problem this loop will go round and round
# and make a big mess
    sleep 120

  done
