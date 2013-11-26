require './lib/limitless_led/bridge'
require './lib/limitless_led/server'

module LimitlessLed

  def self.log(message)
    puts "#{DateTime.now.to_s} : #{message}"
  end

  def self.log_color(color)

    #
    color = color.to_rgb

    # Get each channel and prepare for loggers output
    red   = color.r * 255
    green = color.g * 255
    blue  = color.b * 255

    # Log the color and the hex of the color
    log "████████ ".color(red, green, blue) + color.html

  end

end