List files in directory and print months statistics with total size in bytes
==========

This AWK script can list files in directory and print number of files in single months with total size in bytes.

## About

Script uses `ls` to list files in directory and `stat` to get unix time of modification (creation if your system supports it) and size in bytes. Then script will save all this info and in the end pretty print this to the terminal.

## Getting started

After downloading this repository give executable permission to awk script:
 `chmod +x list_files_in_months.awk`

Then you can run it with:
 `list_files_in_months.awk`

## Changing directory time type

 - Change directory in line `dir = "/home/matej/"` to your own.
 - If your system supports time of birth use %W instead of %Y in line `"stat --printf=\"%Y %s\" \"" dir filename "\"" | getline info`