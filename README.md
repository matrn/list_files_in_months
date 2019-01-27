List files in directory and print months statistics with total size in bytes
==========

This AWK script can list files in directory and print number of files in single months with total size in bytes.

## About

Script uses `ls` to list files in directory and `stat` to get unix time of modification (creation if your system supports it) and size in bytes. Then script will save all this info and in the end pretty print this to the terminal.

## Getting started

After downloading this repository give executable permission to awk script:
 `chmod +x list_files_in_months.awk`

Then you can run it with:
 `./list_files_in_months.awk`
or
 `./list_files_in_months.awk /my/directory`

## Changing the default directory time type

 - Change the default directory in line `dir = "/home/matej/"` to your own.
 - If your system supports time of birth use %W instead of %Y in line `"stat --printf=\"%Y %s\" \"" dir filename "\"" | getline info`

## Example of usage

```
$ ./list_files_in_months.awk /home/matej
Listing directory: /home/matej
Month       Number of files      Total size of files (in bytes)
January  :   7                    163860
February :   1                    4096
March    :   1                    4096
April    :   1                    764
May      :   1                    4096
June     :   3                    12288
July     :   2                    13142852623
August   :   2                    8192
September:   1                    16
October  :   8                    10975459334
November :   4                    44067
December :   10                   49152
```