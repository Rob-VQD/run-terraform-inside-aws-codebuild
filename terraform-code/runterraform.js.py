#import boto3
import sys
from subprocess import call
from subprocess import check_output

if len(sys.argv) != 4:
    print "Error wrong parameter number"
    print "Usage: python runterraform.py region prefix destroy"
    print "Example: python runterraform.py eu-central-1 peppetest1 False"
    sys.exit(1)

myregion = sys.argv[1]
prefix = sys.argv[2]
destroy = sys.argv[3]
IP_addr = sys.argv[4]

mycommands = ["terraform"]

if destroy == "True":
    mycommands.extend(["destroy","--force"])
else:
    mycommands.extend(["apply"])

mycommands.extend([ "-var", "region="+myregion , "-var", "prefix="+prefix, "-var", "IP_address_port_1433="+IP_addr])

print mycommands
call(mycommands)
