while [ 1 ]
do
	echo "MENU"
	echo "1. Simple Interest"
	echo "2. Compound Interest"
	echo "3. Exit"
	echo "Enter Your Choice"
	read choice
	
	case $choice in
	
	1) echo "Enter the values: Principal Amount,Time (In Years) and Rate of Interest"
		read p
		read t
		read r
		si=`echo "scale=2;( $p * $t * $r ) / 100" | bc`
		echo "Simple Interest = $si" ;;
	
	2) echo "Enter the values: Principal Amount,Time (In Years),Rate of Interest and number of times interest applied per year"
		read p
		read t
		read r
		read n
		power=`expr $n \* $t`
		echo $power
		ci=`echo "scale=2; $p * ( 1 + $r / $n ) ^ $power" | bc`
		echo "Compound Interest = $ci" ;;

	3) exit;;
		*) echo "Invalid Choice";;
	
	esac
done