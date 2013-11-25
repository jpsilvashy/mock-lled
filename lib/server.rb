# Usage:
# after starting the server like this: nc -u 0.0.0.0 8899
# send commands with STDIN

require 'eventmachine'
require File.expand_path(File.join(File.dirname(__FILE__), 'server/bridge'))

EM.run do
  EM.open_datagram_socket('0.0.0.0', 8899, Server)
end