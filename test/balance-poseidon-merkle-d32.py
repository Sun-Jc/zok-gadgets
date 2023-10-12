from utils import test_circuit


root = '0x2c5fc07737f40a445ee0de76edd8bb2cb45bb1f8c2fa95deaf57ce45ba6551e8'

owner = '0x0f1d2be4ec1c9e66577c6cfacb25afed6e8e9e9910534d67cff6802b5e479cf5'
slot = '0x08d74e0ac7e0d4301672a7682a216624acdb995d36edbd289287c6d03fee2b22'

balance = '0x0000000000000000000000000000000000000000000000000000000000000064'

next_label = '0x0e8537566aa6c63d2e96a5ba013be508ca3a779fbeffea49aa7e0ef4675187c0'

proof = [0] * 8
proof[0] = '0x0000000000000000000000000000000000000000000000000000000000000000';
proof[1] = '0x195a5c5423af928ee4de54ae776050556a8fc77f1be1938452e2ac90785223ad';
proof[2] = '0x0000000000000000000000000000000000000000000000000000000000000001';
proof[3] = '0x2f9e67996cd14d6b8ed9143b19a831e3f09e9c7861202d8525fad4e12d408e8a';
proof[4] = '0x0000000000000000000000000000000000000000000000000000000000000000';
proof[5] = '0x0d5eff90d19f74c82f1d48a1bd990c049748e53c2378b68ef6b00194705ee7a4';
proof[6] = '0x0000000000000000000000000000000000000000000000000000000000000001';
proof[7] = '0x110fe4bd488335d60f95031fbe5e8a5d5d5b7171083d95cc6aeadb3ba0c6cef3';

# this label must be hash of address and slot, without constraints
label = '0x1e053bf310fd0725f456adf2eaf13755bd93916a42ec55350f8aba09ca34b3fa'

name = 'balance-poseidon-merkle-d32'


# def main(private field owner, private field slot, private field balance, private field next_label, private field[256] label_bits, private u32 N, private field[64] merkleProof) -> field[4] {

hex_owner = owner
owner = int(owner, 16)
hex_slot = slot
slot = int(slot, 16)
hex_balance = balance
balance = int(balance, 16)
next_label = int(next_label, 16)
proof = [int(x, 16) for x in proof]
label = int(label, 16)


N = len(proof)
proof = proof + [0] * (64 - len(proof))


def make_bits(s):
    s_bits = [int(x) for x in bin(s)[2:]]
    s_bits = [0] * (256 - len(s_bits)) + s_bits
    return ' '.join([str(x) for x in s_bits])

def make_h256(s):
    r = hex(s)
    r = r[2:]
    r = '0' * (64 - len(r)) + r
    return '0x' + r

witness = '{} {} {} {} {} {} {}'.format(owner, slot, balance, next_label, make_bits(label), N, ' '.join([str(int(make_h256(x), 16)) for x in proof]))

expected = list(enumerate([root, hex_owner, hex_slot, hex_balance]))

test_circuit(name, witness, expected)