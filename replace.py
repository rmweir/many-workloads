import sys
import fileinput

with open('input', 'r') as file:
    request_body = file.read()

request_body = request_body.replace(sys.argv[1], sys.argv[2])

with open('input', 'w') as file:
    file.write(request_body)
