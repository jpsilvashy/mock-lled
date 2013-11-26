require 'socket'

module LimitlessLed
  class Bridge

    VALID_COMMANDS = (65..77).to_a

    attr_reader :host, :port

    def initialize(host: 'localhost', port: 8899)
      @host = host
      @port = port
    end

    def socket
      @socket ||= begin
        UDPSocket.new.tap do |socket|
          socket.connect host, port
        end
      end
    end

    def send_packet(packet)
      socket.send packet, 0
    end

  end
end
