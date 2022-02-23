Initial Raspberry Pi 4 set up

Using the Raspberry Pi OS installer (https://www.raspberrypi.com/software/) and a blank microSD card (128 GB Recommended) write the raspbian OS onto the SD card. Under the "operating system" menu select "Raspberry Pi OS (other)" and select "Raspberry Pi OS Full (32-bit)". Once the operating system is written to the SD card placed into Raspberry Pi. 

Once initial setup is completed go to terminal (Ctrl + T) and run the following codes:
    sudo apt update
    sudo apt full-upgrade

Next step is to download WiringPi:
    sudo apt-get update
    git clone https://github.com/WiringPi/WiringPi
    cd WiringPi
    ./build

Once these applications have been downloaded check the version by running:
    gpio -v
    gpio readall

System settings also need to be modified. Go to the configuration settings by using the following code: 
    sudo raspi-config
    
Under "Interfacing Options" insure that camera, SSH, VNC, SPI, I2C, Serial, and Remote GPIO are all enabled
System will require a reboot following these changes. The final items that need to be installed are all the python packaged and adafruit system requirements for CircuitPython. Tutorials and information can be found on Adafruit's website (https://learn.adafruit.com/welcome-to-circuitpython).
    sudo pip3 install adafruit-circuitpython-ads1x15
    sudo pip3 install adafruit-circuitpython-bme280
    sudo pip3 install adafruit-circuitpython-mcp9808
    sudo pip3 install adafruit-circuitpython-ccs811
    sudo pip3 install adafruit-circuitpython-bh1750

Once all the background files have been downloaded the github library can be downloaded using 
    wget https://github.com/drcgw/hypox-chamber.git

Unpack the files by unzipping and move RunChamber.sh file to the desktop.

Files can also be run manually through the terminal. Move the "PythonScript/" folder under "Documents/". If running manually before each run create a folder under "Documents/" with the following naming format "YYYY-MM-DD-Exposure/". Once inside this directory create: "FinalData/", "RawData/", "Calibration/" & "ImageCapture/" folders. After these folders have been created the exposure code can be run using the follow codes in the terminal. 
	cd Documents/PythonCodes/
	python3 2022-02-15-HC2000.py

If running it manually make sure that the most recent code has been installed and change the name in the second line of the above code to match the most recent copy of the .py script under the PythonCodes folder.

 