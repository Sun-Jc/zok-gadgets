from utils import test_circuit


rx = int('0x0f7d52588531668e17f9687efd03c3a210c0bcfd197d7823801d7f65a293f381', 16)
ry = int('0x11448c4d4b363783f0fcf32d376dbfdaae021edc4bcdadd6c402cf1c134f3cc4', 16)
v = 27
s = int('0x219915bc44473882ea6227bc24097d98609fde9257b55655e35c3673155ee570', 16)
m = int('0x00000000000000000000000000000000000000000000000047534d5f54534554', 16)

px = int('0x09529341052c81d2df53dbeb59136e82af4e58161ae43a1ad11cf62ee639e85a', 16)
py = int('0x2d8a1a67a1d4a85d43a2713a76efacff3c5367bc865307b4f0936e25470a8a90', 16)
signer = '0x2e7fc44c0da1a2d499cc71262f5385f88ad96a960dabb5f905126e38a375902a'

name = 'grumpkin-ecdsa'

def make_bits(s):
    s_bits = [int(x) for x in bin(s)[2:]]
    s_bits = [0] * (256 - len(s_bits)) + s_bits
    return ' '.join([str(x) for x in s_bits])

def make_h256(s):
    r = hex(s)
    r = r[2:]
    r = '0' * (64 - len(r)) + r
    return '0x' + r

witness = '{} {} {} {} {} {}'.format(make_bits(rx), make_bits(ry), make_bits(s), make_bits(m), px, py)

expected = list(enumerate([make_h256(rx), make_h256(s), make_h256(v), make_h256(m), signer]))

test_circuit(name, witness, expected)