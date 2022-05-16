# OC

## System info
### CPU

1.
  * Способы: 
    * `sudo lshw -class processor`
    *  `cat /proc/cpuinfo`
    *  `lscpu`
    *  `hwinfo --cpu`
  * Команды, которые показывают нужные значение находятся в cpu.sh

### RAM   
2. 
   * RAM - означает Random Access Memory, то есть память с произвольным доступом. В большинстве случаев энергозависимая часть системы компьютерной памяти, в которой во время работы компьютера хранится выполняемый машинный код (программы), а также входные, выходные и промежуточные данные, обрабатываемые процессором
    * SWAP - механизм вирутальнйо памяти, при котором часть данных из оперативной памяти (ОЗУ) перемещается на хранение на накопитель (HDD/SSD) 
3. *  `free -h`
4. * SWAP.sh

### Disk Usage
6. * `df -h`
7. * `du -hs /home`
8.
  * `top`
  * `ps -eF`
  * `ps aux`
### GPU (optional)
9. 
   * `lshw -c video`
   * `lspci`

### Network
10.
    * `ip address | grep inet`
    *  `nslookup localhost`
    *  `ip addr show | grep inet` 
    *  `hostname -i`
    *  `sudo ifconfig | grep inet`

11.
  * `ip addr show | grep ether` 
  * `sudo ifconfig | grep ether`
  * `ip a | grep ether`
12. Надеюсь, было достаточно вариантов в 10 и 11

### Processes info 
13.
    * `top`
    * `ps -eF`
    * `ps aux`

## System Environment
14. * `echo "export VARIABLE="5"" >> ~/.bashrc; source ~/.bashrc`
15. * `export PATH="$HOME:$PATH"`
16.
17.
18. * `echo "alias c="clear"" >> ~/.bashrc; source ~/.bashrc`
19. Есть скриншот выполнения))

## Grep
21. Grep - используется для поиска строк, соответствующих строке в тексте или содержимому файлов. Также она может находить по шаблону или регулярным выражениям. 
  * `ls /usr/bin | grep zip`
22.
23. * `lscpu | grep -i zip` Ключ i делает grep делает команду не чувствительной к регистру
24. * `lscpu | grep -iw model`
25. * `lscpu | grep -iv model`
26. * `ls /usr/bin | grep -in zip`
