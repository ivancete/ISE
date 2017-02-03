#!/usr/bin/python
# -*- coding: utf-8 -*-

filecount = 50000
filesize = 1024

import random, time
from os import system
flush = "sudo su -c 'sync ; echo 3 > /proc/sys/vm/drop_caches'"

randfile = open("/dev/urandom", "r")

print "\ncreate test folder:"
starttime = time.time()
system("rm -rf test && mkdir test")
print time.time() - starttime
system(flush)

print "\ncreate files:"
starttime = time.time()
for i in xrange(filecount):
	rand = randfile.read(int(filesize * 0.5 + filesize * random.random()))
	outfile = open("test/" + unicode(i), "w")
	outfile.write(rand)
print time.time() - starttime
system(flush)

print "\nrewrite files:"
starttime = time.time()
for i in xrange(int(filecount / 10)):
	rand = randfile.read(int(filesize * 0.5 + filesize * random.random()))
	outfile = open("test/" + unicode(int(random.random() * filecount)), "w")
	outfile.write(rand)
print time.time() - starttime
system(flush)

print "\nread linear:"
starttime = time.time()
for i in xrange(int(filecount / 10)):
	infile = open("test/" + unicode(i), "r")
	outfile.write(infile.read());
print time.time() - starttime
system(flush)

print "\nread random:"
starttime = time.time()
outfile = open("/dev/null", "w")
for i in xrange(int(filecount / 10)):
	infile = open("test/" + unicode(int(random.random() * filecount)), "r")
	outfile.write(infile.read());
print time.time() - starttime
system(flush)

print "\ndelete all files:"
starttime = time.time()
system("rm -rf test")
print time.time() - starttime
system(flush)
