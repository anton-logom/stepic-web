import socket                                                                   
 
server_socket = socket.socket()                                                 
server_socket.bind(('0.0.0.0', 2222))                                           
server_socket.listen(10)                                                        
    
while True:                                                                     
        client_socket, remote_address = server_socket.accept()                  
        try:                                                                    
                data = client_socket.recv(1024)                              
                client_socket.send(request.upper())
				if not data or data == "close": client_socket.close()                            
				client_socket.send(data)  
                client_socket.close()                                         
        except:                                                                 
                pass                                                            
server_socket.close()                                              
