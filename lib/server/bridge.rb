require 'rubygems'
require 'eventmachine'
require 'date'

require 'rainbow'
require 'color'

class Server < EM::Connection
  def receive_data(command)
    command.chomp!

    # FIXME This is being interpereted as a string of chars instead of three bytes
    # input = command.bytes
    input = [64, Integer(command), 85]

    # Turn second byte
    color = input[1].to_f / 255.0 * 360.0

    # Rotate 90 degrees and flip to match dial ui on device
    hue = color - 90

    #
    log_color(hue)

  end

  private

  def log(message)
    puts "#{DateTime.now.to_s} : #{message}"
  end

  def log_color(hue)
    #
    color = Color::HSL.new( hue, 90, 50).to_rgb

    # Get each channel and prepare for loggers output
    red   = color.r * 255
    green = color.g * 255
    blue  = color.b * 255

    # Log the color and the hex of the color
    log "████████ ".color(red, green, blue) + color.html
  end

end
