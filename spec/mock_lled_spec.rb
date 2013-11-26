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
require 'em-rspec'

describe LimitlessLed do

  let(:params) { {} }

  subject { LimitlessLed::Bridge.new(params) }

  describe 'em-rspec' do
    it 'executes specs within a reactor loop' do
      EM.reactor_running?.should be_true # This is true
    end
  end

  # Turn all off
  describe '#rgbw_color_led_all_off' do
    it 'RGBW COLOR LED ALL OFF' do
      subject.should_receive(:receive_data).with("\x41\x00\x55")

    end
  end

  # Turn all on
  describe '#rgbw_color_led_all_on' do
    it 'RGBW COLOR LED ALL ON' do
      subject.should_receive(:receive_data).with("\x42\x00\x55")

    end
  end


  # Disco effect
  describe '#disco_mode' do
    it 'DISCO MODE' do
      return false
    end
  end

  describe '#disco_speed_slower' do
    it 'DISCO SPEED SLOWER' do
      return false
    end
  end

  describe '#disco_speed_faster' do
    it 'DISCO SPEED FASTER' do
      return false
    end
  end


  # Toggle groups on/off
  describe '#group_1_all_on' do
    it 'GROUP 1 ALL ON' do
      return false
    end
  end

  describe '#group_1_all_off' do
    it 'GROUP 1 ALL OFF' do
      return false
    end
  end

  describe '#group_2_all_on' do
    it 'GROUP 2 ALL ON' do
      return false
    end
  end

  describe '#group_2_all_off' do
    it 'GROUP 2 ALL OFF' do
      return false
    end
  end

  describe '#group_3_all_on' do
    it 'GROUP 3 ALL ON' do
      return false
    end
  end

  describe '#group_3_all_off' do
    it 'GROUP_3_ALL_OFF' do
      return false
    end
  end

  describe '#group_4_all_on' do
    it 'GROUP 4 ALL ON' do
      return false
    end
  end

  describe '#group_4_all_off' do
    it 'GROUP 4 ALL OFF' do
      return false
    end
  end


  # Set groups to white
  describe '#set_color_to_white_group_all' do
    it 'SET COLOR TO WHITE (GROUP ALL)' do
      return false
    end
  end

  describe '#set_color_to_white_group_1' do
    it 'SET COLOR TO WHITE (GROUP 1)' do
      return false
    end
  end

  describe '#set_color_to_white_group_2' do
    it 'SET COLOR TO WHITE (GROUP 2)' do
      return false
    end
  end

  describe '#set_color_to_white_group_3' do
    it 'SET COLOR TO WHITE (GROUP 3)' do
      return false
    end
  end

  describe '#set_color_to_white_group_4' do
    it 'SET COLOR TO WHITE (GROUP 4)' do
      return false
    end
  end

end

