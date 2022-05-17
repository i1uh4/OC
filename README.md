# Laboratory work on OS

## System info
### CPU

1.
  * Способы: 
    * `sudo lshw -class processor`
    *  `cat /proc/cpuinfo`
    *  `lscpu`
    *  `hwinfo --cpu`
  * Команды, которые показывают нужные значение, находятся в cpu.sh

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
27.
28.  * 

## Find
32.  
  * `find ./ -name "*.txt"` Это поиск по всем директориям файлов с расширением 'txt'
  * `find ./.local -name "*.txt"` Это поиск в директории local файлов с расширением 'txt'
33. 
   * `find ./ -name "*.txt"` Файлы с расширением 'txt' и любой длиной названия
   *  `find ./ -name "?.txt"` Файлы с расширением 'txt' и длиной названия равной 1
   *  `find ./ -name "*.*"` Файлы с любым расширением и длиной названия
34.  * `find ./ -iname "*.*"` Ключик -i позволяет осуществить поиск без учета регистра
35.   
  * `find $HOME -perm 777` Поиск файлов с правами досутпа 777 в HOME директории
  * `find $HOME -perm 600` Поиск файлов с правами досутпа 600 в HOME директории
  * `find ./ -perm 600` Поиск файлов с правами досутпа 600 во всех директориях
36.  * `find / -perm /u=r`
37.  * `find /tmp -type d -empty`
38.  * `find /tmp -type f -name ".*"` 
39.  
  * `find / -mmin -180` За 3 часа
  * `find / -mtime -3` За 3 дня
40.
  * `find / -amin -180` За 3 часа
  * `find / -atime -3` За 3 дня
41.  * `find / -size +10M -size -15M`
42.  * `
43.  * ` find $HOME -type f -name *.txt -exec rm {} \;`
