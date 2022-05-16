cat /proc/cpuinfo| grep 'model name'| uniq
hwinfo | grep 'Units/Processor'| uniq
hwinfo | grep 'Clock'| uniq
lscpu | grep 'L1d cache'
lscpu | grep 'L1i cache'
lscpu | grep 'L2 cache'
lscpu | grep 'L3'
hwinfo | grep 'Arch'| uniq
