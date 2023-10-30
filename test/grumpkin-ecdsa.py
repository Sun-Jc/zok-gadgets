from utils import test_circuit

m = int('0x003387fc44e5d2b8fd73c331381f196efec059c8838039bd73441f8303c3373b', 16)
rx = int('0x018e297d807d7fc148f001fbdff5571531f8c58e1749e4714ee9da394933b842', 16)
ry = int('0x24b3f7911f31d435a153162a9c7270250f31078eced8117ea5f7affe365542a1', 16)
v = 28
s = int('0x0c1e348d806017907b76ec705aec1fbb12776f133f9c530cf283acb46d8ca525', 16)
px = int('0x0000000000000000000000000000000000000000000000000000000000000001', 16)
py = int('0x30644e72e131a026e93ce7417adcfaf9fb0cdb0288a15dfcc0a231066dc0d8d5', 16)
signer = '0x1000ff071941b90a0157c47a6c098acf771e138db4b3d4a00b1fca17f1f671cb'
constrained_signer = '0x0' + signer[3:]

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

witness = '{} {} {} {} {} {} {}'.format(make_bits(rx), make_bits(ry), make_bits(s), make_bits(m), make_bits(int(signer,16)), px, py)

expected = list(enumerate([make_h256(m), constrained_signer]))

test_circuit(name, witness, expected)