
import os
import json

def test_dir(test_name: str):
    return 'out/test/{}'.format(test_name)


def pre_test(test_name: str):
    dir_path = test_dir(test_name)
    if os.path.exists(dir_path):
        os.system('rm -rf {}'.format(dir_path))
    os.makedirs(dir_path, exist_ok=True)


def do_test(test_name: str, witness: str):
    dir_path = test_dir(test_name)
    proof_path = '{}/proof'.format(dir_path)
    print('bash script/prove.sh {} {} {}'.format(test_name, proof_path, witness))
    os.system('bash script/prove.sh {} {} {}'.format(test_name, proof_path, witness))


def assert_input(test_name: str, id: int, expected: str):
    dir_path = test_dir(test_name)
    proof_path = '{}/proof'.format(dir_path)
    proof = json.load(open(proof_path, 'r'))
    if len(proof['inputs']) <= id:
        raise Exception('Invalid input id')
    elif proof['inputs'][id] != expected:
        raise Exception('Mismatched input')
    else:
        print('1 assert passed: {}, {}, {}'.format(test_name, id, expected))
    

def test_circuit(test_name: str, witness: str, expected_inputs: list):
    pre_test(test_name)
    do_test(test_name, witness)
    for expected in expected_inputs:
        assert_input(test_name, expected[0], expected[1])