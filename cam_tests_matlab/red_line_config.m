


%send_req(s,0, 16);
    if s.BytesAvailable  > 0
        disp(fread(s,s.BytesAvailable))
    end

send_req(s,0, 64+32+8 );
pause(0.1);
    if s.BytesAvailable  > 0
        disp(fread(s,s.BytesAvailable))
    end