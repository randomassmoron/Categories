#!/bin/bash

#variables


#functions
categoria() {

	#ia stringul dintre U3Ry1 si U3Ry2 din fisier
sed -n '/U3Ry1/,/U3Ry2/{/U3Ry1/!{/U3Ry2/!p;};}' $filename

}

categoria2() {

sed -n '/U3Ry3/,/U3Ry4/{/U3Ry3/!{/U3Ry4/!p;};}' $filename

}

categoria3() {

sed -n '/U3Ry5/,/U3Ry6/{/U3Ry5/!{/U3Ry6/!p;};}' $filename

}

categoria4() {

sed -n '/U3Ry7/,/U3Ry8/{/U3Ry7/!{/U3Ry8/!p;};}' $filename

}

categoria5() {

sed -n '/U3Ry9/,/U3Ry10/{/U3Ry9/!{/U3Ry10/!p;};}' $filename

}

categoria6() {

sed -n '/U3Ry11/,/U3Ry12/{/U3Ry11/!{/U3Ry12/!p;};}' $filename

}


categoria7() {

sed -n '/U3Ry13/,/U3Ry14/{/U3Ry13/!{/U3Ry14/!p;};}' $filename
}


categoria8() {

sed -n '/U3Ry15/,/U3Ry16/{/U3Ry15/!{/U3Ry16/!p;};}' $filename
}



categoria9() {


sed -n '/U3Ry17/,/U3Ry18/{/U3Ry17/!{/U3Ry18/!p;};}' $filename


}

categoria10() {

sed -n '/U3Ry19/,/U3Ry20/{/U3Ry19/!{/U3Ry20/!p;};}' $filename

}






#code
echo "do you want to see the strings for categories
1) yes
2) no
"
read instructions

if [ $instructions == 1 ]; then
	echo "
category 1: U3Ry1 ... U3Ry2
	 2: U3Ry3 ... U3Ry4
	 3: U3Ry5 ... U3Ry6
	 4: U3Ry7 ... U3Ry8
	 5: U3Ry9 ... U3Ry10
	 6: U3Ry11 ... U3Ry12
	 7: U3Ry13 ... U3Ry14
	 8: U3Ry15 ... U3Ry16
	 9: U3Ry17 ... U3Ry18
	10: U3Ry19 ... U3Ry20
(the last number is the category nr *2 ex: category 7: 13 - 14)
"
	exit 1
fi

echo "make a categories.txt file:
1) yes
2) no
"
read categoriesfile
if [ $categoriesfile == 1 ]; then
	echo "the file has been made (there can be a max of 10 categories)"
   touch categories.txt
	exit 1
fi



echo "choose the file: "

read filename

if [ -f $filename ]; then

echo "Choose the category: "
	if [ -f categories.txt ]; then
		cat categories.txt
	#case for what category i am using
	read categorynr

	case $categorynr in
	1)
	betweenstr=1
U3Ry1	;;
	2)
	betweenstr=2
	;;
	3)
	betweenstr=3
        ;;
	4)
	betweenstr=4
        ;;
	5)
	betweenstr=5
	;;
	6)
	betweenstr=6
	;;
	7)
	betweenstr=7
	;;
	8)
	betweenstr=8
	;;
	9)
	betweenstr=9
	;;
	10)
	betweenstr=10
	;;

	esac


	 if [ $betweenstr == 1 ]; then
        categoria

elif	[ $betweenstr == 2 ]; then
        categoria2

elif	[ $betweenstr == 3 ]; then
        categoria3


  elif	 [ $betweenstr == 4 ]; then
      	 categoria4

elif       [ $betweenstr == 5 ]; then
	categoria5
elif        [ $betweenstr == 6 ]; then
        categoria6
elif        [ $betweenstr == 7 ]; then
        categoria7

elif        [ $betweenstr == 8 ]; then
        categoria8


elif     [ $betweenstr == 9 ]; then
        categoria9


    elif     [ $betweenstr == 10 ]; then
        categoria10

fi



	else
	echo "categories.txt doesn't exist"

	fi

else

echo "the file doesn't exist"

fi


