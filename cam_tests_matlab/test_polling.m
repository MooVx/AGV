
i = 0;
while 1
    
    send_req(s,0,8+ 64 );
    pause(0.1)
    if s.BytesAvailable  > 0
        msg = fread(s,s.BytesAvailable);
        
        lanes =bitand(msg(2), 48)/16
        angle = msg(12) + msg(11)*128
        if angle > 200
            angle=-(360-angle)
        end
        
        %disp(fread(s,s.BytesAvailable))
        
    end
    %disp(i)
    pause(0.2);
    
    i= i + 1;
    
    
end
