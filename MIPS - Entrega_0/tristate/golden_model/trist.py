def tristate(enable, _in):
    if(enable):
        return _in
    else:
        return 'xxxx'

file = open('tristate.tv', 'w')
enable = 0
limit = 2

for i in range(0, 32):
    if (i > 15):
        enable = 1
        limit = 3
    file.write(str(enable) + '_' + str(bin(i)[limit:].zfill(4)) + '_' + tristate(enable, bin(i)[limit:].zfill(4)) + '\n')


   
file.close()

