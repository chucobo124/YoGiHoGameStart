class SocketClient < ActiveRecord::Base	
	def self.givecommand(command)
		ip = '192.168.4.1'
		port = 4000
		tcpClient = TCPSocket.open(ip, port)
		tcpClient.print(command)
	end
	#def self.client
	#	ip = '192.168.4.1'
	#	port = 4000
	#	begin
	#		tcpClient = TCPSocket.open(ip, port)
	#	rescue
	#		"nil"
	#	end
	#end
end