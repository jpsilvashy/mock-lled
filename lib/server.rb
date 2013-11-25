require 'rubygems'
require 'eventmachine'
require 'date'

require 'rainbow'
require 'color'

class UDPHandler < EM::Connection
  def receive_data(command)
    command.chomp!

    # FIXME This is being interpereted as a string of chars instead of three bytes
    # input = command.bytes
    input = [64, 0, 85]

    # Turn second byte
    color = input[1].to_f / 255.0 * 360.0

    # FIXME rotate 90 degrees and flip to match dial ui on device
    color = Color::HSL.new( color.to_i, 90, 50).to_rgb

    # Get each channel and prepare for loggers output
    red   = color.r * 255
    green = color.g * 255
    blue  = color.b * 255

    # Log the color and the hex of the color
    log "████████ ".color(red, green, blue) + color.html

  end

  private

  def log(message)
    puts "#{DateTime.now.to_s} : #{message}"
  end
end

EM.run do
  EM.open_datagram_socket('0.0.0.0', 8899, UDPHandler)
end