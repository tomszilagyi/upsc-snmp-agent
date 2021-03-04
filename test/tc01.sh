#!/bin/bash

cd $(dirname $0)

export PATH=.:$PATH

upsc=upsc_ex1_connected_and_charged

function testInput ()
{
cat <<EOF
PING
garbage1 aoeui
garbage2 dhtns
garbage3
!@#*&$@#
23498SRosnhouEHSONEUH*&@#$*2

set
.1.3.6.1.2.1.33.1.1.1.0
string
new value that cannot be set!

getnext
.1.3.6.1.2.1.33.1.1.1.0

get
invalid-oid

get
.1.3.6.1.2.1.33.1.1.1.0
get
.1.3.6.1.2.1.33.1.1.2.0
get
.1.3.6.1.2.1.33.1.1.3.0
get
.1.3.6.1.2.1.33.1.1.4.0
get
.1.3.6.1.2.1.33.1.1.5.0
get
.1.3.6.1.2.1.33.1.1.6.0

get
.1.3.6.1.2.1.33.1.2.1.0
get
.1.3.6.1.2.1.33.1.2.2.0
get
.1.3.6.1.2.1.33.1.2.3.0
get
.1.3.6.1.2.1.33.1.2.4.0
get
.1.3.6.1.2.1.33.1.2.5.0
get
.1.3.6.1.2.1.33.1.2.6.0
get
.1.3.6.1.2.1.33.1.2.7.0

get
.1.3.6.1.2.1.33.1.3.1.0
get
.1.3.6.1.2.1.33.1.3.2.0
get
.1.3.6.1.2.1.33.1.3.3.1.1.1
get
.1.3.6.1.2.1.33.1.3.3.1.2.1
get
.1.3.6.1.2.1.33.1.3.3.1.3.1
get
.1.3.6.1.2.1.33.1.3.3.1.4.1
get
.1.3.6.1.2.1.33.1.3.3.1.5.1

get
.1.3.6.1.2.1.33.1.4.1.0
get
.1.3.6.1.2.1.33.1.4.2.0
get
.1.3.6.1.2.1.33.1.4.3.0
get
.1.3.6.1.2.1.33.1.4.4.1.1.1
get
.1.3.6.1.2.1.33.1.4.4.1.2.1
get
.1.3.6.1.2.1.33.1.4.4.1.3.1
get
.1.3.6.1.2.1.33.1.4.4.1.4.1
get
.1.3.6.1.2.1.33.1.4.4.1.5.1

get
.1.3.6.1.2.1.33.1.5.1.0
get
.1.3.6.1.2.1.33.1.5.2.0

get
.1.3.6.1.2.1.33.1.6.1.0

get
.1.3.6.1.2.1.33.1.7.1.0
get
.1.3.6.1.2.1.33.1.7.3.0

get
.1.3.6.1.2.1.33.1.8.1.0
get
.1.3.6.1.2.1.33.1.8.2.0
get
.1.3.6.1.2.1.33.1.8.3.0
get
.1.3.6.1.2.1.33.1.8.4.0
get
.1.3.6.1.2.1.33.1.8.5.0

get
.1.3.6.1.2.1.33.1.9.1.0
get
.1.3.6.1.2.1.33.1.9.2.0
get
.1.3.6.1.2.1.33.1.9.3.0
get
.1.3.6.1.2.1.33.1.9.4.0
get
.1.3.6.1.2.1.33.1.9.5.0
get
.1.3.6.1.2.1.33.1.9.6.0
get
.1.3.6.1.2.1.33.1.9.7.0
get
.1.3.6.1.2.1.33.1.9.8.0
get
.1.3.6.1.2.1.33.1.9.9.0
get
.1.3.6.1.2.1.33.1.9.10.0

EOF
}

testInput | /usr/bin/python3 ../upsc-snmp-agent.py $upsc | diff -u ref01.txt -
