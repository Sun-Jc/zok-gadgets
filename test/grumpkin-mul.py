from utils import test_circuit

p1x = int('0x0047b33cbbc49c51cbf6655187aafafddd3676497369367325fc60ac8dfb2ea3', 16)
p1y = int('0x2b4ff950b8db6771fb24edb9a7339d5ec6beda8c65340248d01dc5de4c5d41bb', 16)

s = int('0x1b07017af9a4950b642b3b7971d0efee4e6da2b12ac16e487ac590671c2089b5', 16)

rx = '0x3038c4630093bf2f121d1d34b983f0f7b8f5924e83c261841d7fbe09fec9579b'
ry = '0x275a0a237afebfa1305e3452e295a1e19749a349f1de16d95bdd96e988cb70cf'

name = 'grumpkin-mul'

def make_bits(s):
    s_bits = [int(x) for x in bin(s)[2:]]
    s_bits = [0] * (256 - len(s_bits)) + s_bits
    return ' '.join([str(x) for x in s_bits])

witness = '{} {} {}'.format(p1x, p1y, make_bits(s))

test_circuit(name, witness, [(0, rx), (1, ry)])