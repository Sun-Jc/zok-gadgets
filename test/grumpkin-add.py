from utils import test_circuit

p1x = int('0x081fd947bb5cc566cea50080bcb20fac5992a5da48bb2f69415d561b14a3b127', 16)
p1y = int('0x29987fb76e06d8ed23412931f0305de8654e500d06aa36fa7ebd9db23fddd7cf', 16)
p2x = int('0x0b25db53469790aabc15ee2995404299f3eee839bc7155fb797d45e90daeb0e6', 16)
p2y = int('0x165f1130ca533046faa0110f21d6de72ceeee19bdd72ea6f8ee640982581c651', 16)

rx = '0x1d728485cf5454e7d7f9698a365ecf7703649c0b88a65e372ea7c1376d1c8aac'
ry = '0x144ae807875e36ad2036d60e88b4d36a3b8ad33ca546821491d1d97f217a793f'

name = 'grumpkin-add'

witness = '{} {} {} {}'.format(p1x, p1y, p2x, p2y)

test_circuit(name, witness, [(0, rx), (1, ry)])