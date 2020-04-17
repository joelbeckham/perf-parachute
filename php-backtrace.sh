#!/bin/bash
#gdb --batch -n -ex "set pagination off" -ex "source /home/ubuntu/.gdbinit" -ex "zbacktrace" --pid=$1
# awk command rebuilds it but uses default whitspacing which strips leading and trailing spaces and compresses mulitple spaces

# dump top php process
TOP_PID=$(top -bn 1 | grep php | head -n 1 | awk '{$1=$1};1' | cut -d ' ' -f1)

for i in {1..3}; do
        echo " -- Backtrace #$i on pid=$TOP_PID -----------------"
        gdb --batch -n -ex "set pagination off" -ex "source /tmp/backtrace/.gdbinit" -ex "zbacktrace" --pid=$TOP_PID;
done