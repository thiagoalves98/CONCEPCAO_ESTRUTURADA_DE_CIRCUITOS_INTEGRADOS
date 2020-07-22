def mux2(d0, d1, s):
    if(s == 0):
        return (d0 + '_' + d1 + '_' + str(s)+ '_' + d0)
    else:
        return (d0 + '_' + d1 + '_' + str(s) + '_' + d1)

file = open('mux2.tv', 'w')

file.write(mux2('1111', '0000', 0) + '\n')
file.write(mux2('1111', '0000', 1) + '\n')

file.close()



