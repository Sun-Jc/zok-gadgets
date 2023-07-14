import sys
import subprocess
import json

sk_str = sys.argv[1]
sk = int(sk_str, 16)

msg = sys.argv[2]

folder = sys.argv[3]

outfile = sys.argv[4]

N = 256

s = bin(sk)[2:]
s = s[::-1]
s = s + '0' * (N - len(s))

wit = ' '.join([c for c in s])

cmd = '( cd {folder} ; zokrates compute-witness -a {wit} {msg} --verbose  --output "{outfile}-witness.bin")'.format(wit=wit, msg=int(msg, 16), folder=folder, outfile=outfile)
res = subprocess.run(cmd, shell=True, capture_output=True, text=True)

cmd = '( cd {folder} ; zokrates generate-proof -w "{outfile}-witness.bin" -j "{outfile}-proof.json")'.format(folder=folder, outfile=outfile)
res = subprocess.run(cmd, shell=True, capture_output=True, text=True)

j = json.load(open('{folder}/{outfile}-proof.json'.format(folder=folder, outfile=outfile)))

if len(j['inputs']) == 3:
    pk = (j['inputs'][0], j['inputs'][1])
    print("Derived Public Key: ", pk)
else:
    address = (j['inputs'][0])
    print("Derived Address: ", address)

print("Msg: ", msg)

print("Proof: ", j['proof'])


