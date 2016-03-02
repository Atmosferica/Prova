#!/usr/bin/python
#
# Parse commands arguments test script
#
# author: andreatsh 
# e-mail: andrea.miglietta92@gmail.com

import argparse
import textwrap


parser = argparse.ArgumentParser(
     formatter_class=argparse.RawDescriptionHelpFormatter,
     description=textwrap.dedent('''\
        Please do not mess up this text!
        --------------------------------
            I have indented it
            exactly the way
            I want it
        '''),
     epilog='ciao sono io amore mio'
     )



## positional arguments
parser.add_argument( 'command', nargs="?", default='status', choices=('status', 'start', 'stop'),
                     help='Speficy command to execute, default is \'status\''
                   )

## optional arguments
parser.add_argument( '-a', '--all', action='store_true', default=False, dest='lcm',
                     help='All LCM nodes are considered' 
                   )
parser.add_argument( '-n', nargs='+', dest='node', # action='append', default=[], dest='node', 
                     help='Select one or more nodes (at least one)' 
                   )
parser.add_argument( '-1', '--lcm1', action='store_true', default=False, dest='lcm1',
                     help='LCM1 nodes are considered' 
                   )
parser.add_argument( '-2', '--lcm2', action='store_true', default=False, dest='lcm2',
                     help='LCM2 nodes are considered' 
                   )
parser.add_argument( '-v', '--version', action='version', version='%(prog)s 1.0', 
                     help='Print program version' 
                   )	   
## 
args = parser.parse_args()

### nodi di lcm per il momento inutili
lcm1 = ['abe','crash','duke','glados','lara','link','king','pang','pong','snake','sonic','spyro','yoshi']
lcm2 = ['actarus','elwood','gex','gin','jake','kirk','martini','picard','q','raziel','sarek','spock','tron','worf','zombie']
##


hosts=[]

if ( args.lcm or (args.lcm1 and args.lcm2) ): hosts += lcm
else: 
   if args.lcm1: 
      hosts += lcm1 
      if args.node:
         for i in args.node: 
	    for j in lcm2: 
	       if (i==j): hosts.append(i) 
   elif args.lcm2:
      hosts += lcm2
      if args.node:
         for i in args.node:
	    for j in lcm1:
	       if (i==j): hosts.append(i)
   elif args.node:
      lcm = lcm1 + lcm2
      for i in args.node:
         for j in lcm: 
	    if (i==j): hosts.append(i)

print hosts
    

