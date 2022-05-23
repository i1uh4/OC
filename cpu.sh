cat /proc/cpuinfo| grep 'model name'| uniq
cat /proc/cpuinfo | grep "cpu cores" | uniq
hwinfo | grep 'Clock'| uniq
lscpu | grep 'L1d cache'
lscpu | grep 'L1i cache'
lscpu | grep 'L2 cache'
lscpu | grep 'L3'
hwinfo | grep 'Arch'| uniq
