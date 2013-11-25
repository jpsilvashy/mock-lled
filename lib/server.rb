#
require 'server/bridge'

EM.run do
  EM.open_datagram_socket('0.0.0.0', 8899, Server)
end