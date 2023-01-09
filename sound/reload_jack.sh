#!/usr/bin/env python3

import pyudev
import subprocess

def main():
    output = subprocess.check_output(['cat', '/proc/asound/cards'])
    # print(output)
    output = output.decode("utf-8")
    # print("Version info: ",output)
    cards = []

    for line in output.splitlines():
        if(line.strip()[0].isdigit()):
            item = line[line.find('[')+1:line.find(']')]
            cards.append(item.strip())
    
    # print(cards)
    selectedCard = -1;

    if("USB" in cards):
        selectedCard = "USB";
    else:
        selectedCard = cards[0]
    
    areWeJacked = subprocess.check_output(['are_we_jacked.sh'])
    areWeJacked = areWeJacked.decode("utf-8").strip()
    
    correctCard = False;

    if(areWeJacked == 'JACK'):
        hardware = subprocess.check_output(['jack_control', 'dp'])
        hardware = hardware.decode("utf-8")
        for line in hardware.splitlines():
            if(line.strip().startswith('device')):
                print("line:" ,line)
                hwName = line[line.find('(')+1:line.find(')')].split(':')[-1]
                
                if(hwName==selectedCard):
                    print("already on the right card")
                    correctCard = True
        if(not correctCard):
            output = subprocess.check_output(['stop_jack.sh'])


    if(not areWeJacked or not correctCard):
    
        print("jack is not running")

        if(selectedCard=="USB"):
            subprocess.call(['start_jack_usb.sh'])
        else:
            subprocess.call(['start_jack_laptop.sh'])


    # print(areWeJacked)


    # if("USB" in cards):
    #     subprocess.call(['start_jack_usb.sh'])
    # else:
    #     subprocess.call(['start_jack_laptop.sh'])

    # context = pyudev.Context()
    # monitor = pyudev.Monitor.from_netlink(context)
    # monitor.filter_by(subsystem='usb')
    # monitor.start()

    # for device in iter(monitor.poll, None):
    #     # I can add more logic here, to run different scripts for different devices.
    #     #subprocess.call(['/home/foo/foobar.sh', '--foo', '--bar'])
    #     print("changed")

if __name__ == '__main__':
    main()
