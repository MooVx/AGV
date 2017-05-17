








choose_red_lines = 128 + 16
request=196
while 1:
    # request = 100
    # rs485.write(chr(request))
    # rs485.write(chr(255-request))
    request = 200

    rs485.write(chr(request))
    rs485.write(chr(255-request))
    time.sleep(0.5)
    data = rs485.read_all()
    response = ''
    for i in xrange(0, len(data) - 1):
        k = ord(data[i])
        response = response + '  ' + str(k)
    print response + ' ___' + str(len(data))
