function send_req(com, address,command)
    request = mod(address,4) + 128;
    
   
    request = request + command;
    
    fwrite(com, request);
    fwrite(com, 255 - request);
end