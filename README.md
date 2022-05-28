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
7. * `du -hs /home/your_username` 
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
    *  `ip addr show | grep inet` 
    *  `sudo ifconfig | grep inet`

11.
  * `ip addr show | grep ether` или можно использовать `ip a | grep ether`, или `ip addr | grep ether`
  * `sudo ifconfig | grep ether`
12. Надеюсь, было достаточно вариантов в 10 и 11

### Processes info 
13.
    * `top`
    * `ps -eF`
    * `ps aux`

## System Environment
14. * `echo "export VARIABLE="5"" >> ~/.bashrc; source ~/.bashrc`
15. * `export PATH="$HOME:$PATH"`
16. * `В процессе`
17. * `В процессе`
18. * `echo "alias c="clear"" >> ~/.bashrc; source ~/.bashrc`
19. Есть скриншот выполнения)). Делалось через параметры терминала, где уже надо просто тыкать на красивые и не очень цвета, жирность и т.п. К сожалению, не понял как это выполняется через команды.

## Grep
21. Grep - используется для поиска строк, соответствующих строке в тексте или содержимому файлов. Также она может находить по шаблону или регулярным выражениям. 
  * `ls /usr/bin | grep zip`
  * `grep -r "model" /usr/bin/foo2lava-wrapper` Надо задать pattern и путь для файла (У меня pattern = "model", а путь до файла это все, что после pattern)
  *  `grep -r "pattern" /usr/bin/*.txt` Надо задать pattern и тогда он будет искать по пути все файлы формата txt с заданным pattern.
  *  `grep -E 'pattern1|pattern2' /usr/bin/*.txt` Надо задать pattern1 и pattern2, тогда он будет искать по пути все файлы формата txt с заданными паттернами. Для поиска заданных паттернов только в одном файле надо указать путь до этого файла с его названием.
22.  * `lscpu | grep -i zip` Ключ i делает grep делает команду не чувствительной к регистру
23.  * `lscpu | grep -iw model`
24.  * `lscpu | grep -iv model`
25.  * `ls /proc | grep info`
26.  * `ls /usr/bin | grep -in zip`
27.  
  * `\	Экранирование специального символа (например\., соответствует буквенной точке)`
  * `^	Декларирует начало данных (или строки в многострочном режиме)`
  * `$	Декларирует конец данных (или окончание строки в многострочном режиме)`
  * `.	Соответствует любому символу, кроме перевода строки (по умолчанию)`
  * `[]	Определяет диапазоны (например[a-z], любая строчная буква), ^ означает “нет” (например[^,]+, соответствует любому количеству не запятых в строке)`
  * `|	Начало ветки альтерннативного выбора`
  * `() Группировка разделов`
  * `?	Предыдущий символ может присутствовать или не присутствовать (например/hell?o/, будет соответствовать helloилиhelo)`
  * `*	Допускается любое количество вхождений предыдущего символа`
  * `+	Одно или несколько вхождений предыдущего символа, но строго больше 0`
  * `{} Указывают, сколько символов в строке (например a{12}, соответствует 12 “a” в строке)`
28.  
  * `grep ".*\.so$" /lib`
  * `grep -r ".*\.so$" /lib` (-r отвечает за обход всех поддиректорий)
29. 
  * Установка kaggle через терминал `pip install --user kaggle`. Затем заходим на регистрируемся/авторизовываемся, заходим в раздел аккаунт и создаем новый токен API. После его скачивания в терминале создаем каталоги помещаем этот файл в созданный каталог `mkdir ~/.kaggle; mv kaggle.json ~/.kaggle`. Потом система предложит изменить права в целях безопасности `chmod 600 ~/.kaggle/kaggle.json`. Затем устанавливаем набор данных, в нашем случае это будет выглядеть так: `kaggle datasets download kaggle/hillary-clinton-emails`
  * `unzip hillary-clinton-emails.zip` (Разархивируем скаченный архив). После используем команду `grep -Eo "\b[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+.[a-zA-Z0-9.-]+\b" Emails.csv` || o это ключ, который показывает совпавшие непустые части строк. \b отвечает за то, что это граница почты (начало и конец этой почты), выражения внутри "[ ]" показывают допустимые символы в почте (Это строчные буквы от а до z, прописные буквы от а до z, любая цифра, точка или тире)
30.  * ( `grep -Ec "\b[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+.[a-zA-Z0-9.-]+\b" Emails.csv` Подсчет кол-ва вхождений заданного паттерна в файле ) Не то решение, не надо сюда смотреть)
31.  * `ps aux | grep <username>` 
  * `ps -u <username>`
  * Можно еще взять `pgrep -u <username>`, но это уже не совсем grep и показывает он только PID всех запущенных программ

## Find
32.  
  * `find ./ -name "*.txt"` Это поиск по всем директориям файлов с расширением 'txt'
  * `find ./.local -name "*.txt"` Это поиск в директории local файлов с расширением 'txt'
33. 
   * `find ./ -name "*.txt"` Файлы с расширением 'txt' и любой длиной названия
   *  `find ./ -name "?.txt"` Файлы с расширением 'txt' и длиной названия равной 1
   *  `find ./ -name "*.*"` Файлы с любым расширением и длиной названия
34.  * `find ./ -iname "*.*"` Ключик -i позволяет осуществить поиск без учета регистра
35.  Надеюсь, что теперь будет правильно 
  * `find / -perm 777` Поиск файлов с правами доступа 777 в HOME во всех директориях
  * `find /home/<username> -perm 600` Поиск файлов с правами доступа 600 в HOME директории
  * `find / -perm 600` Поиск файлов с правами доступа 600 во всех директориях
36.  * `sudo find / -perm 444` Поиск файлов с разрешением только на чтение 1)у владельца, 2)у пользователей, у которых есть доступ к файлам, 3)у пользователей, у которых нет доступа к файлам 
37.  * `find /tmp -type d -empty`
38.  * `find /tmp -type f -name ".*"` 
39.  
  * `find / -mmin -180` За 3 часа
  * `find / -mtime -3` За 3 дня
40.
  * `find / -amin -180` За 3 часа
  * `find / -atime -3` За 3 дня
41.  * `find / -size +10M -size -15M`
42.  * ` find ./ -name "*.txt" -exec cp "{}" /tmp \;`
43.  * `sudo find /tmp -amin -5 -name *.txt -exec rm "{}" \;` Удалятся все файлы типа ".txt", которые были добавлены/изменены в течение 5 минут (В таком варианте лучше сразу прописывать удаление. а то что-то не то удалится) )

## Bash
44.  * `sudo mkdir scripts`
45.  * Находится в `Hello world.sh` (Там две вариации вывода 'hello world')
46.  * `Do_File_Exist.sh` 
