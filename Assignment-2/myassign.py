
#!/usr/bin/python

"""
This example shows how to create an empty Mininet object
(without a topology object) and add nodes to it manually.
"""

from mininet.net import Mininet
from mininet.node import Controller
from mininet.cli import CLI
from mininet.log import setLogLevel, info
from mininet.link import TCLink
import sys

def emptyNet():

    
    net = Mininet( controller=Controller ,  link=TCLink)

    info( '*** Adding controller\n' )
    net.addController( 'c0' )
	
    info( '*** Adding Hsts\n' )

    Hsts = int(sys.argv[1])
    schs = int( sys.argv[2])
    
    Swtch = []
    count=1    
    for i in range(schs):
	      s = net.addSwitch('s'+str(i+1))	
        for j in range(Hsts):            
            h = net.addHost( 'h'+str(cnt))
	          ind=count
	          count= count+1
	          if ind % 2 !=0:
                net.addLink( h, s, bw=1 )
	          else:
                net.addLink( h, s , bw=2 )
        Swtch.append(s)

    for i in range(schs):
	    if i < schs-1:
            net.addLink(Swtch[i], Swtch[i+1], bw=2)

    info( '*** Starting network\n')
    net.start()

    info( '*** Running CLI\n' )
    CLI( net )
