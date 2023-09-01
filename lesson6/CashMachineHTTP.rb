require "socket"

server = TCPServer.new "0.0.0.0", 3000

while connection = server.accept
  connection.print "HTTP/1.1 200 OK\r\n"
  connection.print "Content-Type: text/html \r\n"
  connection.print "\r\n"
  connection.print "HTTP/1.1 200 \r\n"
  connection.print "Hello world"

  connection.close
end
