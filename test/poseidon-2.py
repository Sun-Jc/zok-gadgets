from utils import test_circuit

r1 = int('0x00000000007917d257a345eeba351b6b45504d532f301d6f81729718d6e30eca', 16)
r2 = int('0x0000000000cc75cc1af14b36674d00592128b01cde2a3c05c9612d79d703304a', 16)

h = '0x21e04fad96d40f635054d47bf71808438279b74db9c60bfd651bb38aa40139d7'

name = 'poseidon-2'

witness = '{} {}'.format(r1, r2)

test_circuit(name, witness, [(0, h)])