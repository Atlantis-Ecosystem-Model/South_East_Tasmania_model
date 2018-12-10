This folder contains input files needed to run example SE Tasmanian Atlantis ecosystem model.
The Atlantis version 6411 (Mon, 26 Nov 2018) was used to run this model.
For more details about the model see https://github.com/Atlantis-Ecosystem-Model/Atlantis_example_and_instructions

The example files provided here will run the simulation for 365 days. This takes about 1-2 minutes on a standard laptop computer.

######################
- To run the SE Tasmanian example model on Windows:

1. Compile the Atlantis code as per instructions in the GitHub page and User Guide and installed the required NetCDF libraries.
2. Once the code is compiled, find the Atlantis executable file (atlantismain.exe) and put it into the same folder as your input files.
3. Open the command terminal
4. Navigate to the folder that has atlantismain.exe and input files.
5. Type the name of the .bat file, in this case RunAtlantis.bat
6. If the NetCDF libraries are installed properly, then Atlantis should run. Otherwise you might need to find missing .dll files (usually netcdf.dll and MSVCR71.dll) and put them in the same folder as atlantismain.exe file. If some .dll files are missing, Atlantis will usually give an error message with the missing .dll file name.


- To run the SE Tasmanian example model on Linux:
1. Compile the Atlantis code as per instructions in the GitHub page and installed the required NetCDF libraries.
2. Open the command terminal
3. Navigate to the folder that contain input files.
4. Type the name of the .sh file, in this case RunAtlantis.sh

######################
Note, Atlantis will start loading input files, and produce A LOT OF WARNING MESSAGES.

Most of these warning messages just inform users about the spatial position of their functional groups, missing non-essential parameters
and other model aspects and can be ignored for now.

When all input files are loaded and checked and the actual simulations start Atlantis will start producing daily output like this:

t = 0.5, hd.t = 1.75, TofY: 0, % Done: 0.136986
t = 1, hd.t = 2.25, TofY: 1, % Done: 0.273973
t = 1.5, hd.t = 2.75, TofY: 1, % Done: 0.410959
...

When simulations end Atlantis will print:

t = 364, hd.t = 365.25, TofY: 364, % Done: 99.726027
t = 364.5, hd.t = 1.153843746e+032, TofY: 364, % Done: 99.863014
Freeing general box arrays
Freeing model variables
Freeing biology specific arrays
Freeing the home range structures
Freeing fishery specific arrays
Freeing physics specific arrays
Skip freeing assessment specific arrays
Freeing box geometry
Freeing biological arrays
Freeing names
Freeing fisheries arrays
Freeing market arrays
Freeing fuel arrays
Freeing assessment arrays
Freeing performance measures
Freeing physiochem property memory

#####################
The example above is only a very brief introduction into running Atlantis. For more details check
For more details about the model see https://github.com/Atlantis-Ecosystem-Model/Atlantis_example_and_instructions
which will direct you to further information on Atlantis user guide and wiki

####################
For instruction on how to install and run Atlantis on Linux and MacOS machine please see https://github.com/Atlantis-Ecosystem-Model/Atlantis_example_and_instructions
