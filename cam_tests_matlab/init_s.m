s = serial('COM5');
set(s,'BaudRate',115200);
s.StopBits=1;
s.Parity='even';
% s.BytesAvailableFcnCount = 28;
% s.BytesAvailableFcnMode = 'byte';
% s.BytesAvailableFcn = @instrcallback;
  fopen(s);
s
