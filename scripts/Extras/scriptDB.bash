#!/bin/bash
if /usr/bin/wget "http://10.212.141.192/" --timeout 6 -O - 2>/dev/null | grep "SQLSTATE"
then
exit 1
fi
