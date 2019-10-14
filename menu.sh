#####
# title: menu driven program
# author: abc
# description: many features - add, sub, mul
# usage: ./menu.sh or bash menu.sh
#####

#!/bin/bash


swap(){
   echo "Enter A:"
   read a
   echo "Enter B:"
   read b
   echo "A:$a and B:$b"
   temp=$a
   a=$b
   b=$temp
   echo "After Swap."
   echo "A:$a and B:$b"
}

add(){
   ((ans=3 + 1))
   echo $ans
}

move(){

echo "Enter Directory Name:"
read dname

echo "Enter File Name:"
read fname

cpath=$(pwd)

mkdir -p $cpath/$dname
echo "New Directory Created."

touch -f $fname
echo "New File Created"

mv $fname $cpath/$dname
echo "File is moved"

ls  $cpath/$dname
}

create_tar(){

touch a.txt b.txt c.txt
echo "Available files: "
ls *.txt
echo "enter filename:"
read fname
echo "enter diractory name:"
read dname
cpath=$(pwd)
#rm -r $cpath/$dname
mkdir -p $cpath/$dname
tar cvfz "$cpath/$dname/file.tar.gz" $fname
echo "atr created"
ls $dname

}


for(( i=1; i<=4;i++ ))
do
for(( j=1; j<=i; j++ ))
do
echo -n "* "
done
echo ""
done


status=true
while $status
do
  echo "" 
  echo "Menu"
  echo "1. Add"
  echo "2. Sub"
  echo "3. Exit"

  echo "Enter Choice: "
  read choice

 case $choice in
 1)
   swap
   add ;;
 2)
    #move
    create_tar  ;;
 3)
    echo "Exiting..."
    status=false ;;
 *)
   echo "" 
   echo "Wrong Choice."
 esac
done
