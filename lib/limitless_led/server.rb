require 'eventmachine'

require 'date'
require 'rainbow'
require 'color'

module LimitlessLed
  class Server < EM::Connection

    def receive_data(packet)
      log_input packet
    end

    def log_input(input)
      command = input.bytes

      case command.first
      when 64
        set_color command[1]

      when 65
        raise "Not implemented"

      when 66
        raise "Not implemented"

      when 67
        raise "Not implemented"

      when 68
        raise "Not implemented"

      when 69
        raise "Not implemented"

      when 70
        raise "Not implemented"

      when 71
        raise "Not implemented"

      when 72
        raise "Not implemented"

      when 73
        raise "Not implemented"

      when 74
        raise "Not implemented"

      when 75
        raise "Not implemented"

      when 76
        raise "Not implemented"

      when 77
        raise "Not implemented"

      else
        log "invalid command recieved: #{command.first}: #{command}"
      end

    end

    private

    def set_color(color)

      # Turn second byte
      color = color.to_f / 255.0 * 360.0

      # Rotate 90 degrees and flip to match dial ui on device
      hue = color - 90

      # log the color that was set
      log_color(hue)
    end

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
end
