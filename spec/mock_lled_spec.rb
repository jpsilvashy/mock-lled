# Tests should cover these commands, which can also be found here:
# http://www.limitlessled.com/dev/

# RGBW COLOR LED ALL OFF          0x41    65
# RGBW COLOR LED ALL ON           0x42    66

# DISCO SPEED SLOWER              0x43    67
# DISCO SPEED FASTER              0x44    68

# GROUP 1 ALL ON                  0x45    69 (SYNC/PAIR RGB+W Bulb within 2 seconds of Wall Switch Power being turned ON)
# GROUP 1 ALL OFF                 0x46    70
# GROUP 2 ALL ON                  0x47    71 (SYNC/PAIR RGB+W Bulb within 2 seconds of Wall Switch Power being turned ON)
# GROUP 2 ALL OFF                 0x48    72
# GROUP 3 ALL ON                  0x49    73 (SYNC/PAIR RGB+W Bulb within 2 seconds of Wall Switch Power being turned ON)
# GROUP 3 ALL OFF                 0x4A    74
# GROUP 4 ALL ON                  0x4B    75 (SYNC/PAIR RGB+W Bulb within 2 seconds of Wall Switch Power being turned ON)
# GROUP 4 ALL OFF                 0x4C    76

# DISCO MODE                      0x4D    77

# SET COLOR TO WHITE (GROUP ALL)  0x42    100ms followed by:  0xC2
# SET COLOR TO WHITE (GROUP 1)    0x45    100ms followed by:  0xC5
# SET COLOR TO WHITE (GROUP 2)    0x47    100ms followed by:  0xC7
# SET COLOR TO WHITE (GROUP 3)    0x49    100ms followed by:  0xC9
# SET COLOR TO WHITE (GROUP 4)    0x4B    100ms followed by:  0xCB

require 'spec_helper'

describe Server do


end

