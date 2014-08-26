#!/bin/bash
clear
echo "Welcome To CIDE !!!"
echo ""
n=0
while test $n -eq 0
do
 n=1
 echo "Enter File Name: "
 read fname
 e=0
 while test $e -eq 0
 do
  e=1
  nano $fname.c
  o=0
  while test $o -eq 0
  do
   o=1
   echo "Press Y To Compile and Run."
   read ans
    if test $ans = "y" ; then
      gcc $fname.c -o $fname.o
      chmod +x $fname.o
      clear
      ./$fname.o
    fi
   echo ""
   echo "-------End Of Program--------"
   echo ""
   echo "Choose Any One"
   echo "1: New File"
   echo "2: Edit Current File"
   echo "3: Re-Run Current Program"
   echo "4: Exit CIDE"
   read choice
   case "$choice" in
     1) n=0 ;;
     2) e=0 ;;
     3) o=0 ;;
     4) exit ;;
     *) echo "INVALID OPTION"
   esac
  done
 done
done
