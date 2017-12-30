#!/bin/sh

crond 
searchd --nodetach &
sleep 5 && /root/sh/gen-full-index
/bin/sh

