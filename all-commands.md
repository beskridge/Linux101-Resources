# All Commands

This document contains all the commands used in the TCM Academy course "Linux 101."  It is provided as a supplement to the videos for convenience.  The course videos provide context and commentary for these commands that are necessary for your mastery of the topics.  Note that only significant commands are present.  Commands such as "clear" are not listed.

## Getting Started

### Intro to the Command Line
    whoami
    Whoami
    hostname
    pwd
    ls
    cd files
    cd ..
    mv file or Folder  /home/username/distination/position
    cp file or folder /home/username/distination/position 
    mkdir FolderName
    rmdir FolderName
    touch FileName 
    mv fileOldName  newFileName
    ~ : this back one time to userDefault
    

### Getting Help on the Command Line
    man ls
    info ls
    ls --help

### Command Line Arguments and Options
    man ls
    ls -al
    ls --all -l
    man ls
    ls
    ls -I "file*"
    ls --ignore="file*"

### Looking at Text Files: more and less
    ls
    more wordlist.txt
    less wordlist.txt
    more image.jpg

### Another Way to Look at Text Files: cat
    man cat
    ls
    cat file1.txt
    cat file3.txt
    cat file1.txt file3.txt
    cat file3.txt file1.txt
    cat
    Hello world
    man cat
    cat -b file3.txt file1.txt
    cat -n file3.txt file1.txt
    cat file3.txt file1.txt > combined.txt
    cat combined.txt
    cat > new-file.txt
    Hello world
    Ctrl+D
    cat new-file.txt

## Files and Filesystems

### Linux Filesystem Hierarchy Standard
    man hier

### Devices, Partitions, and Mounting
    mount
    df -h
    du -sh ~

### Absolute and Relative Paths
    ls /home/bob/files/notes.txt
    cd /var/log
    ls /home/bob/files/notes.txt
    ls /home/bob/files/no-such-file.txt
    cd /home/bob
    ls files/notes.txt
    ls ./files/notes.txt
    cd files
    ls notes.txt
    ls ./notes.txt
    cd ../backup
    ls ../files/notes.txt
    cd /var/log
    ls ../../home/bob/files/notes.txt

### Working with Files and Directories
    ls -l notes.txt
    touch notes.txt
    ls -l notes.txt
    touch test.txt
    ls test.txt
    cp notes.txt notes-copy.txt
    man cp
    mv notes-copy.txt ../backup/
    ls ../backup
    rm ../backup/notes-copy.txt
    ls ../backup
    man rm
    mkdir project
    cd project
    cd ..
    rmdir project
    ls non-empty-dir/
    rmdir non-empty-dir
    rm -rf non-empty-dir
    mkdir project
    mv project project01

### Spaces in Paths and Filenames
    cd spaces
    ls
    cat file name.txt
    cd my dir
    cat file\ name.txt
    cd my\ dir
    cd ..
    cat "file name.txt"

### File and Path Expansion
    ls file*.txt
    ls file?.txt
    ls **/*.txt
    shopt -s globstar
    ls file[123].txt
    ls file[1-3].txt
    ls file[a-zA-Z].txt

### More Looking at Text Files: head, tail, and diff
    head wordlist.txt
    head -n 5 wordlist.txt
    head -5 wordlist.txt
    tail wordlist
    tail -n 5 wordlist.txt
    tail -5 wordlist.txt
    tail -f /var/log/auth.log
    <in another terminal> sudo ls
    diff file1.txt file3.txt
    Hard and Soft Filesystem Links
    cat hello.txt
    ln hello.txt hello-hard-link.txt
    <edit hello.txt>
    cat hello.txt
    cat hello-hard-link.txt
    ls -l hello*.txt
    rm hello.txt
    cat hello-hard-link.txt
    ln hello-hard-link.txt hello.txt
    ln -s ./hello.txt hello-soft-link.txt
    ls -l hello*.txt

### Compressing and Archiving Files
    man zip
    zip tmp/backup-files.zip file1.txt file2.txt file3.txt
    ls tmp
    unzip -l tmp/backup-files.zip
    ls dir1 dir2
    zip tmp/backup-dirs.zip dir1 dir2
    unzip -l tmp/backup-dirs.zip
    rm tmp/backup-dirs.zip
    zip -r tmp/backup-dirs.zip dir1 dir2
    unzip -l tmp/backup-dirs.zip
    man tar
    tar cvf backup.tar file?.txt dir? shakespeare.txt
    tar tvf backup.tar
    cd test
    tar xvf ../backup.tar
    ls
    ls dir?
    rm -rf *
    cd ..
    ls -lh backup.tar
    gzip backup.tar
    ls -lh backup.tar.gz
    gunzip backup.tar.gz
    ls
    tar cvfz backup2.tar.gz file?.txt dir?
    ls -l backup2.tar.gz

### Searching the Filesystem
    man find
    find . -name 'file*.txt'
    find . -iname 'file*.txt'
    locate file.txt
    locate file*.txt
    locate -i file*.txt
    which ls

## Users and Groups
    sudo useradd UserName
    sudo passwd UserName

### Working with Users and Groups
    users
    who
    w
    less /etc/passwd
    less /etc/group
    ls -la /home

### File and Directory Permissions
    ls -l
    man chmod
    ls -l hello.txt
    chmod g-w hello.txt
    ls -l hello.txt
    chmod a=,u=r hello.txt
    ls -l hello.txt
    chmod 664 hello.txt
    ls -l hello.txt
    man chown
    ls -l hello.txt
    chown sally hello.txt
    ls -l hello.txt
    chgrp sally hello.txt
    ls -l hello.txt

### Changing Users
    cat /etc/shadow
    sudo cat /etc/shadow
    cat /home/sally/sample.txt
    ll /home/sally/sample.txt
    sudo -u sally cat /home/sally/sample.txt
    su sally

### Changing Passwords
    man passwd
    passwd
    <enter wrong password>
    passwd
    sudo passwd sally

## Installing Software

### Package Management: Debian Systems
    man dpkg
    apt update
    apt list --upgradable
    apt upgrade
    which pdftk
    apt search pdftk
    apt show pdftk
    apt install pdftk-java
    which pdftk
    apt remove pdftk-java
    apt purge pdftk-java
    apt autoremove

### Package Management: RedHat Systems
    sudo yum check-update
    sudo yum update
    yum search qpdf
    yum info qpdf
    sudo yum install qpdf
    which qpdf
    yum remove qpdf

### Manually Installing Software
    apt install build-essential automake checkinstall libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext cmake gcc curl
    which git
    cd Downloads
    wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.29.3.tar.gz
    tar xfz git-2.29.3.tar.gz
    ls
    cd git-2.29.3/
    less INSTALL
    ./configure
    make
    sudo make install
    git --version

## Shells

### Environment Variables
    printenv | less -S
    COUNT_LOCAL=42
    echo $COUNT_LOCAL
    echo COUNT_LOCAL
    bash
    echo $COUNT_LOCAL
    exit
    echo $COUNT_LOCAL
    export COUNT_GLOBAL=55
    echo $COUNT_GLOBAL
    bash
    echo $COUNT_GLOBAL
    exit
    unset COUNT_GLOBAL
    echo $COUNT_GLOBAL

### Startup Files
    ls -al ~
    nano .bashrc
    <Add lines>
    alias del='rm -rfi'
    alias c='clear'
    <Save and exit>
    c
    <new shell>
    ls
    c
    <original shell>
    source .bashrc
    c

### Redirecting Input and Output
    sudo ls /root
    ls /root
    ls /etc/
    ls /etc/ > ~/dir-contents.txt
    less ~/dir-contents.txt
    ls /tmp/
    ls /tmp/ > ~/dir-contents.txt
    less ~/dir-contents.txt
    ls /etc/ >> ~/dir-contents.txt
    less ~/dir-contents.txt
    clear
    head /etc/passwd
    head < /etc/passwd
    clear
    find / -name 'sample.txt'
    find / -name 'sample.txt' 2> errors.txt
    less errors.txt
    find / -name 'sample.txt' 2> /dev/null
    cat /dev/null
    find / -name 'sample.txt' &> all.txt
    less all.txt
    find / -name 'sample.txt' > all.txt 2>&1
    find / -name 'sample.txt' > location.txt 2> /dev/null
    cat location.txt

### Pipes
    ls -l /etc/ | less
    ls -l /etc/ | head -n 20 | tail -n 5
    find / -name 'sample.txt' | less
    find / -name 'sample.txt' |& less

### Command History
    history
    history | tail
    !<insert command #>
    !10
    !-1
    !!
    !cat
    cat file1.txt
    ^file1.txt^fileA.txt^
    history
    less ~/.bashrc

### Command Substitution
    cat file-list.txt
    cat file-list.txt | ls -l
    ls -l < file-list.txt
    ls -l `cat file-list.txt`
    ls -l cat file-list.txt
    ls -l $(cat file-list.txt)

## More Utilities
 sudo apt install screenfetch
 sudo screenfetch

### Searching and Processing Text
    man grep
    grep bob wordlist.txt
    grep -v e wordlist.txt | less
    grep error /var/log/*.log
    grep error -A 1 -B 3 /var/log/*.log
    cat random-words.txt
    sort random-words.txt
    cat random-numbers.txt
    sort -nr random-numbers.txt
    man uniq
    less random-words.txt
    uniq random-words.txt
    sort duplicates.txt | uniq
    wc wordlist.txt
    grep bob wordlist.txt | wc -l
    clear
    grep -v e random-words.txt
    grep -v e random-words.txt | sort
    grep -v e random-words.txt | sort | uniq
    grep -v e random-words.txt | sort | uniq | wc -l

### Manipulating Text
    man sed
    cat sample.txt
    sed 's/Suite/Ste/' sample.txt
    echo Suite Suite | sed 's/Suite/Ste/'
    echo Suite Suite | sed 's/Suite/Ste/g'
    sed '$s/Suite/Ste/g' sample.txt
    sed '/Suite/d' sample.txt
    grep Suite sample.txt
    sed '/ee/ s/Suite/Ste/g' sample.txt
    sed 's/$/\n/g' sample.txt | sed 's/,/\n/g'
    sed -e 's/$/\n/g' -e 's/,/\n/g' sample.txt
    clear
    echo linux bob sally | awk '{print $2}'
    echo linux bob sally | awk '{print $3,"likes",$1}'
    awk -F ',' '{print $1}' sample.txt
    awk -F ',' '{print $1}' sample.txt | awk '{print $2 ", " $1}'
    cat sample.txt
    awk -F ',' '/Dakota/ {print $1}' sample.txt
    awk -F ',' '/Dakota/ {print NR,$1}' sample.txt
    cat sample.txt | tr ',' '\t'
    cat sample.txt | tr 'a-z' 'A-Z'
    man tr
    cat sample.txt | tr '[:lower:]' '[:upper:]'

### Networking at the Command Line
    ping google.com
    ping -c 3 google.com
    ifconfig
    man ifconfig
    ip address
    ip -s link
    ip help
    ip address help
    ip link help
    ip address
    sudo ip link set dev enp0s3 down
    ip address
    ping google.com
    sudo ip link set dev enp0s3 up
    ip address
    ping google.com
    ip route
    route
    sudo ip route add 10.0.3.0/24 via 10.0.2.1
    ip route
    sudo ip route delete 10.0.3.0/24 via 10.0.2.1
    ip route
    nslookup google.com
    dig google.om
    dig -x 8.8.8.8
    netstat -at
    netstat -at
    netstat -lt
    Type in separate terminal: python3 -m http.server
    netstat -lt
    ifconfig /displaydns
    ifconfig /release
    ifconfig /renew
    ifconfig /flushdns


### File Transfer Utilities
    scp file.txt 192.168.100.4:/home/bob/
    Remote host: ls
    scp -r files 192.168.100.4:/home/bob/
    Remote host: ls
    Remote host: ls files/
    scp 192.168.100.4:/home/bob/remote-file.txt backup/
    scp -r 192.168.100.4:/home/bob/remote-files backup/
    scp file.txt sally@<ip>:/home/sally/
    rsync -avzh file2.txt 192.168.100.4:/home/bob/
    rsync -avzh file2.txt 192.168.100.4:/home/bob/
    man rsync

### Converting Text Files
    cd line-endings
    ls
    file *.txt
    vim sample-dos-file.txt
    :e ++ff=unix
    vim sample-macos-file.txt
    cp sample-unix-file.txt temp.txt
    unix2dos temp.txt
    file temp.txt
    unix2dos -n sample-unix-file.txt temp.txt
    file temp.txt
    cp sample-unix-file.txt temp.txt
    unix2dos -c mac temp.txt
    file temp.txt
    cp sample-dos-file.txt temp.txt
    dos2unix temp.txt
    file temp.txt
    cp sample-macos-file.txt temp.txt
    dos2unix -c mac temp.txt
    file temp.txt

## Process Management
   top 
   ps
   ps -u 
   ps -A
   kill -L
   nice -n [value] [Process name]

### Process Information
    ps
    man ps
    ps ax | less -S
    ps -e | less -S <separate window>
    ps aux | less -S
    ps -ef | less -S
    man ps
    ps -U root -u root u | less -S
    ps -eH | less -S
    pstree | less -S
    top
    d

### Foreground and Background Processes
    xeyes
    ls
    Ctrl+c
    xeyes &
    ls
    xeyes
    Ctrl+Z
    jobs
    bg
    jobs
    fg
    ls
    xclock &
    jobs
    fg 2
    Managing Processes
    man kill
    kill -l
    xeyes &
    ps -ef | grep xeyes
    kill <PID>
    xeyes &
    ps -ef | grep xeyes
    kill -9 <PID>
    man pkill
    xeyes &
    xeyes &
    pkill xeyes
    sleep 10

### Scheduling Processes with Crontab
    less /etc/crontab
    ll /etc/cron.daily
    crontab -e
    5 1 2 * * touch /home/bob/cron/crontab-ran.txt
    5 1,13 2 * * touch /home/bob/cron/crontab-ran.txt
    */5 * * * * touch /home/bob/cron/crontab-ran.txt
    crontab -l
    ll /home/bob/cron/crontab-ran.txt
    ll /home/bob/cron/crontab-ran.txt
    crontab -r
    crontab -l
    cd /etc/init.d
    ls
    ls -d /etc/rc*.d
    ls -l /etc/rc5.d/

## Regular Expressions
### What is a Regular Expression?

    ^(?=[A-Z0-9][A-Z0-9@._%+-]{5,253}$)[A-Z0-9._%+-]{1,64}@(?:(?=[A-Z0-9-]{1,63}\.)[A-Z0-9]+(?:-[A-Z0-9]+)*\.){1,8}[A-Z]{2,63}$

    ^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$

https://www.ex-parrot.com/pdw/Mail-RFC822-Address.html

### Searching with Regular Expressions
Links to regular expressions on Regexr:
- https://regexr.com/66ogg
- https://regexr.com/66ogj
- https://regexr.com/66ogm
- https://regexr.com/66ogv

### Replacing with Regular Expressions
Links to regular expressions on Regexr:
- https://regexr.com/66ogj
- https://regexr.com/66ogg

## Scripting
## Bash Scripting: Basics
    bash hello-world.sh
    ls -l hello-world.sh
    ./hello-world.sh
    chmod +x hello-world.sh
    ./hello-world.sh
    gvim executing-commands-example.sh &
    ./executing-commands-example.sh

## Bash Scripting: Control Structures
    gvim if-examples.sh &
    ./if-examples.sh
    gvim comparison-examples.sh
    ./comparison-examples.sh
    gvim case-example.sh &
    ./case-example.sh 5
    ./case-example.sh 5.1

## Bash Scripting: Loops
    gvim loop-examples.sh &
    ./loop-examples.sh | less

## Bash Scripting: Examples
    gvim command-line-arguments-example.sh &
    ./command-line-arguments-example.sh first second third fourth fifth 6 7 8 9 10 11 12 13
    https://xkcd.com/936/
    ./generate-password.sh 4 '-'
