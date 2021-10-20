# Exercises

This document contains exercises for the TCM Academy course "Linux 101."  It is provided as a supplement to the course for additional experience.

## Getting Started

### Getting Help on the Command Line

1. Why is there no man page or info for the command to change directories `cd`?  We will discuss this later in the course, but this information is good to know now.  Note that some distributions may have a man page for the command, but most do not.  While Linux Mint does not have a man page for cd, there is a help page for it.

### Command Line Arguments and Options
1. Using the man page for the `ls` command, create commands that accomplish the following:
  - List the contents of a directory sorted by size while displaying the size in human-readable format
  - List the contents of directory sorted by the last modification time
  - List the contents of the current directory using a long listing format and recursively list the contents of all sub-directories.
1. Using the man page for the `hostname` command, create commands that accomplish the following:
  - Display any aliases associated with your current host.
  - Display the IP address associated with your current host.
  - Display all IP addresses associated with your current host.  Is there a difference between the results for this command and the previous one?  If so, why?

### Looking at Text Files: more and less
1. Use the less command to look at the provided file wordlist.txt.  How do you search for "oop"?  Test your search by moving forwards and backwards through the results.
1. Use the less command to look at the provided file shakespeare.txt.  How do you search for "thou"?  Test your search by moving forwards and backwards through the results.

### Another Way to Look at Text Files: cat
1. Demonstrate a command to concatenate the output from the file `example2.txt` in the `dir1` sub-directory, the file `random-numbers.txt` in the current directory, and the file `test-1237735244.txt` in the `dir-test` subdirectory to the screen.  Every output line should be numbered and end of lines should be indicated by the "$" symbol.

## Files and Filesystems

### Absolute and Relative Paths
1. How can you tell the difference between a relative and an absolute path?
1. Assume your current working directory is `/var/log`.  Demonstrate a command to change the current working directory to your home directory using an absolute path and another command that uses a relative path.
1. Assume you are in your home directory.  Demonstrate a command to change the current working directory to `/etc/init.d` using an absolute path and another command that uses a relative path.  Now, assume you are a different user and the current directory is that user’s home directory.  Which, if any, of the previous commands would be different?  Why or why not?

### Working with Files and Directories
1. Assume the following files are in the current working directory:
        $ls
        bak1    bak2a    file1     file3    file4c      test
        bak3    file2    file3a    notes    test-old
Demonstrate commands to accomplish the following tasks using as few characters as possible:
  - List the `file1`, `file2`, and `file3` files only
  - List the `notes` file only
  - List the `file1`, `file3`, `bak1`, and `bak3` files
1. Demonstrate a command to create a new directory `course` that is a sub-directory of the current working directory and a `students` directory that is a sub-directory of the `course` directory in a single command.
1. Demonstrate a command to copy the file `example1.txt` from the sub-directory `project` to the sub-directory `backup` while changing the name of the file to `example-backup1.txt`.
1. Demonstrate a command to move the file `example2.txt` from the sub-directory `project` to the sub-directory `backup` while changing the name of the file to `example-backup2.txt`.
1. Demonstrate a command to create an empty file named `my file.txt` (note the space).  Demonstrate a command to move the file to the subdirectory `backup`.  How were these commands different from previous ones in which the file had no space?
1. Demonstrate a command to create an empty file named `-h` (note the dash).  Demonstrate a command to move the file to the subdirectory `backup`.

### File and Path Expansion
1. Demonstrate a command that lists all the files in `/usr/bin/` that contain the string 'cc' while in your home directory.
1. Demonstrate a command that lists all the files in `/usr/bin/` that do not contain a digit in the filename.

### More Looking at Text Files: head, tail, and diff
1. Demonstrate a command to list the first seven (7) lines of the `/etc/passwd` file.
1. Demonstrate a command to list the last 15 lines of the `/var/log/syslog` file.
1. Demonstrate a command to list the last five (5) lines of the `/var/log/syslog` file and list new lines as the file is updated.

### Hard and Soft Filesystem Links
1. Demonstrate a command that creates a symbolic link named current that links to the subdirectory `courses/linux101/`.  Change directories to the symbolic link.  What is your current working directory?

### Compressing and Archiving Files
1. Demonstrate a command that creates a ZIP archive of your home directory and stores it in the file `/tmp/home-backup.zip`.  What is the command that lists all the files in the archive so you can ensure the archive was properly created?
1. Demonstrate a command that creates a TAR archive of your home directory and stores it in the file `/tmp/home-backup-1.tar`.  What is the command that lists all the files in the archive so you can ensure the archive was properly created?
1. Demonstrate a command that compresses the TAR archive using the GZIP compression algorithm.
1. Demonstrate a command that creates a TAR’ed GZIP’ed compressed archive of your home directory and stores it in the file `/tmp/home-backup-2.tar.gz`.

### Searching the Filesystem
1. Demonstrate a command to find all text files (i.e., files with a ".txt" extension) in your home directory.
1. Demonstrate a command to find all text files (i.e., files with a ".txt" extension) in your home directory.  The search should follow any symbolic links it finds.
1. Demonstrate a command to find all hidden files in user home directories that uses the find command and another command that uses the locate command.
1. Demonstrate a command to find all files in your home directory that are larger than 512k.

## Users and Groups

### File and Directory Permissions
1. Convert the following octal permissions into symbolic form:
       440
       664
       755
1. Convert the following symbolic permissions into octal form:
       rw-rw-r--
       rwxr--r--
       rw-------
1. Demonstrate a command to set the permissions `rwxrw-r--` on a file using symbolic arguments and another command that uses numeric arguments.
1. Create a directory and populate it with some empty files.  Demonstrate a command that removes execute permission on the directory for the current user.  What is the effect of this change?
1. Demonstrate a command to find all files with the SETUID permission.  What is special about these files?

## Installing Software

### Package Management: Debian Systems
1. Use debian.org to find the DEB for the latest version of the game xscorch that is compatible with your system.  Download the deb file and install it in your system.
1. Install the ruby programming language on your system using apt.
1. Install the wireshark program using a GUI package manager.

### Package Management: RedHat Systems
1. Use rpmfind.net to find the RPM for the latest version of the game ninvaders that is compatible with your system.  Download the rpm and install it in your system.
1. Install the ruby programming language on your system using yum.
1. Install the wireshark program using a GUI package manager.

### Manually Installing Software
1. Use r-project.org to find the compressed tar file for the R statistical computing software.  Create an opt directory under the root filesystem.  Install the R software under the opt directory in an appropriate sub-directory.  Directions for installing software manually are usually found either in the compressed tar file itself or on the software’s website.

## Shells

### Environment Variables
1. How would you modify the `PATH` environment variable so that the `bin` subdirectory in your home directory is checked last?  How would you modify it so that it is checked first?
1. Create an environment variable name whose value is your first name.  What is the output of the following commands?  Why are they different?
      echo $name
      echo ‘$name’
      echo “$name”
1. Create a command that makes the name environment variable available a global environment variable.
1. Create a command to delete the name environment variable.

### Startup Files
1. Demonstrate a command to change you prompt to the following format:
      [<user>:<full-path> (<event>)]$
Note that the angle brackets `< >` denote the environment variable to use and should not be in the prompt itself.
1. Demonstrate a command to change you prompt to the following format:
      [<user>@<host>:<full-path> (<event>)]$
1. Demonstrate how to modify your `.bashrc` file to use the first prompt if you are logged in locally and the second if you have logged in remotely.
1. Demonstrate how to modify your `.bashrc` file to include an alias called myps that lists all the running processes on the system using BSD syntax.

### Redirecting Input and Output
1. Demonstrate a command to create a file called `bin-files.txt` whose contents is a list of all the files present in the `/bin` directory.
1. Demonstrate a command to create a file called `bin-files.txt` whose contents is a list of all the files present in the `/bin` and `/sbin` directories that have setuid permissions.
1. Demonstrate a command that redirects standard output to the file `std.out` and standard error to the file `std.err`.
1. Demonstrate a command that redirects both standard output and standard error to the file both.out such that the output is appended to the current contents of the file.
1. When you use the redirection operator `>` to send output to a file, the shell creates the file before the command is executed.  Create a command that demonstrates this in action.

### Pipes
1. Demonstrate a command to list the file (5) largest files (hidden or not) in a given directory and send the output to the `less` command.
1. Demonstrate a command that displays the number of users listed in `/etc/passwd` with a shell `/usr/bin/false` and sends the output to the file `service-users.txt`.
1. Demonstrate a command that displays all the unique lines in the file `numbers.txt` that contain the string "42" sorted in increasing numerical order.

### Command History
1. Using command history, demonstrate two methods for executing the previous command.
1. Demonstrate a command that executes the previous command and replaces "cat" with "dog".

### Command Substitution
1. Use command substitution to concatenate all the files in your home directory that are less than 50 bytes in size.
1. Demonstrate a command that sets a variable named today that contains the current date.
1. Demonstrate a command that creates a set of directories whose names are contained in the file 1.

## More Utilities

### Searching and Processing Text
1. Demonstrate a command that finds the line with your username in the `/etc/passwd`.  To challenge yourself, demonstrate a command that does this without specifying your username explicitly.  In other words, create a command that works for any username.
1. Demonstrate a command that finds entire lines that match the string "Hello world" in the file `example.txt`.  Note that the line should only contain the search string and nothing else.
1. Demonstrate a command that finds all lines containing the whole word "you" and not containing the case insensitive whole word "me" in the file some-words.txt.
1. Demonstrate a command that performs a case insensitive search for the word "error" in `/var/log/syslog`.  The output should contain the line before the one with the word error and two (2) lines after.

### Manipulating Text
1. Demonstrate a sed command that sends the content of a file named `sample.txt` to standard out and removes all whitespace at the beginning and end of each line.
1. Demonstrate a sed command that replaces all occurrences of the word "unix" in a file named `unix.txt` with the word "linux" and sends the output to the file `linux.txt`.
1. Demonstrate an awk command that displays the username and the length of the username for every user listed in `/etc/passwd`.
1. Demonstrate a command that lists all the usernames in `/etc/passwd` where the user has the login shell `/usr/bin/false` in reverse alphabetical order.  Note that the output should only contain the usernames.

### Networking at the Command Line
1. What is the command to set your network interface to promiscuous mode?
1. Demonstrate a command to determine the ip address of `www.google.com`.  Provide at least two (2) different approaches using two different tools designed specifically for determining IP addresses.
1. Demonstrate a command to determine the hostname of the IP address you found in the previous exercise (i.e., perform a reverse lookup).  Does the hostname differ from what you expected?  Why?
1. Demonstrate a command to generate a listing of the currently listening TCP and established TCP sockets.  Since the output contains quite a bit of information, send the output of the command to a file called `listening.txt`.
1. Someone accidentally deleted the default gateway.  What command would have done this?  What command would you use to add back the default gateway?  Note:  When you test this command, be sure to save the default gateway information before you delete it.

### File Transfer Utilities
1. Use a command from the command line to download an image at the following URL and save it to the Downloads sub-directory in your home directory with the filename `placeholder.png`.
https://via.placeholder.com/100/placeholder.png
1. Demonstrate an `rsync` command that synchronizes all files in your home directory with the directory `/home/backup` onto a remote machine `192.168.1.42`.  Ensure that only new files or files that have changed are synchronized.

### Converting Text Files
1. Create a `sed` command to convert a DOS text file to a Unix text file.
1. Create a `tr` command to convert a Dos text file to a Unix text file.

## Process Management

### Process Information
1. Demonstrate a command to display all the running processes for the user sally.
1. Use two different commands to display all the currently running processes as a hierarchy that depicts processes associated with their parent process.
1. Browsers usually have a separate process for each tab.  Demonstrate a command that lists all the firefox processes.
1. Demonstrate a command that monitors the most cpu intensive processes for five (5) seconds and produces a report every second.

### Managing Processes
1. Start a Firefox browser process.  What command will find the pid of the primary process? Provide at least two different commands (using different programs) that will produce the pid.
1. Send a (gentle) signal to the process indicating that it should exit and perform all the normal exit routines.
1. Assume that the process was unresponsive.  How would you modify the signal to force Linux to terminate the process?
1. Assume the process 1066 is taking too many resources that other processes need.  Demonstrate a command that changes the priority of the process so that it is more willing to share resources.

### Foreground and Background Processes
1. Start two (2) `xclock` processes in the background.  One should use a digital display and the other should use an analog display.  What series of commands do this?  Note: xclock is installed by default in Linux Mint.  If your distribution does not have it by default, you will need to install it to test this command.
1. Start a graphical text editor process as a normal foreground process.  Linux Mint has xed installed by default and CentOS has gedit installed by default.  Use the one appropriate for your system.  What will suspend the editor process?
1. List all the current processes of the shell.  Note that this is not the same as previous process listings and is tied to shell processes.
1. Resume execution of the text editor as a background process.
1. Move the text editor from a background process to a foreground process.

### Scheduling Processes with Crontab
1. Add a cron job for your user that will append the current time to the file `time.txt` that is located in your home directory.  The job should run every minute.  Submit both the commands needed to create the job and the file after the job has run for at least five minutes.  When finished, don’t forget to remove the cron job.
1. Add a cron job for your user that will store the current time in the file `now.txt` that is located in your home directory.  The job should run only once at a specific time.

## Regular Expressions
1. Which of the following matches regex `/a(ab)*a/` (choose all that are correct)?
      abababa
      aaba
      aabbaa
      aba
      aabababa
1. Which of the following matches regex `/a.[bc]+/` (choose all that are correct)?
      abc
      abbbbbbbb
      azc
      abcbcbcbc
      ac
      asccbbbbcbcccc
1. Which of the following matches regex `/[a-z][\.\?!]\s+[A-Z]/` (choose all that are correct)?
      A. B
      c! d
      e f
      g. H
      i? J
      k L
1. Create a regular expression that matches only words that start and end with a vowel and are at least three (3) characters long.
1. Creating complex regular expressions is best done iteratively.  In this exercise, you will create increasingly more complex regular expressions to match various words related to the word email.  For this exercise, you are not allowed to use the period (`.`) operator.
  1. Create a regular expression that matches only the following words:
          e-mail
          email
  1. Update the previous regular expression to match only the following words:
          e-mail
          email
          e-mails
          emails
  1. Update the previous regular expression to match only the following words:
          e-mail
          email
          e-mails
          emails
          e-mailing
          emailing
          e-mailings
          emailings
1. The word "apparent" is frequently misspelled.  Create a regular expression that matches only the correct spelling and these common misspellings: apparent, apparent, apparent, apparent
1. The word "guarantee" is frequently misspelled.  Create a regular expression that matches only the correct spelling and these common misspellings: guarantee, guarantee, guarantee
1. Create a regular expression that matches only a valid social security number. (Source: https://en.wikipedia.org/wiki/Social_Security_number#Valid_SSNs)
1. Create a regular expression that matches only the words that have three (3) consecutive double-letter pairs (e.g., the word "bookkeeper" has two consecutive o’s, k’s, and e’s).
1. Create a regular expression that matches only a valid password with the following requirements:
  - The password’s first character must be a letter.
  - It must contain at least 3 characters.
  - It must be no longer than 15 characters.
  - No characters other than letters, numbers, and the underscore may be used.

## Scripting
1. Write a shell script that displays the names of all directory files, but no other types of files, in the working directory.
1. Write a script to display the time every 15 seconds.  Read the date man page and display the time, using the `%r` field descriptor.  Clear the window (using the `clear` command) each time before you display the time.
1. Write a script that checks all its arguments to see if they are files.  If a file does exist, print whether or not the user has execute permissions.
