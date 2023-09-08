from utils import test_circuit

rx = int('0x0e0e5011873be430dd917d713276944f23443424cf99f5a5a49a43f62e298b9e', 16)
ry = int('0x2c7d563391624da555895cf67f2a8fc31aaac32ed78462f6eabe1165988b9f63', 16)
s = int('0x0770a287ec65ebf4993e260b6d69e55dcca5409db0c6bb28b3fb856b23b87626', 16)
m = int('0x00000000000000000000000000000000000000000000000047534d5f54534554', 16)
s_rx = int('0x1d55b3dc68a9ac3ae571a0d4587c6c28f1a047a89dd80b1d85f834f8b5098889', 16)
m_rx = int('0x07ec3a9d20813449095c023450f88f55a3626343ca79b9d17ae85ae23c659944', 16)

px = '0x1227312970d02c9978cdab4e8c38c1add54cf277a14673541c267fe3a28e27ca'
py = '0x1e660cdcebf9ba4fe109a95c73f67afe84dc3a3b9802d3a9eade6a09c201ed8a'

name = 'grumpkin-ecdsa'

def make_bits(s):
    s_bits = [int(x) for x in bin(s)[2:]]
    s_bits = [0] * (256 - len(s_bits)) + s_bits
    return ' '.join([str(x) for x in s_bits])

witness = '{} {} {} {} {} {} {}'.format(rx, ry, make_bits(s), s, m, make_bits(s_rx), make_bits(m_rx))

test_circuit(name, witness, [(0, px), (1, py)])