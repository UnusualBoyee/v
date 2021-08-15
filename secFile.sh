> ~/.bash_setup/.debugged
if [ -f ~/.bash_aliases ]; then
sed -e 's/alias //g' ~/.bash_aliases | sed 's/#.*//g' | sort -b | awk '{if(NF>0) {print $0}}' > ~/.bash_setup/.bash_aliases
fi
DAY=`date +"%A"`
isUS=`locale | grep -i lc_time | cut -c '9-'`
echo -e "\e[033m                              $DAY\e[0m"
echo -en "\e[1;032m"
if [[  "$isUS" == "en_US.UTF-8" ]]; then
	echo "[OK] ISUS" > ~/.bash_setup/.debugged
else
	echo "[UPDATED] ISUS" > ~/.bash_setup/.debugged
	LC_TIME=en_US.UTF-8
fi
TIME=`date +"%H"`
aMp=`date +"%p"`
if [ $TIME -eq 12 ]; then
	echo "GOOD AfTERNOON"
elif [ $TIME -eq 0 ]; then 
	echo "MID NIGHT"
elif [ $TIME -lt 12 ]; then
	if [ "$aMp" == "AM" ]; then
		echo "GOOD MORNING"
	else
		echo "GOOD EVENING"
	fi
elif [ $TIME -gt 12 -a "$aMp" == "PM" ]; then
	echo "GOOD EVENING"
else
	echo "() PROBLEM DATE" >> ~/.bash_setup.debugged
fi
if [ -f ~/.bash_setup/.dailyNotes ]; then
	NOTE1=`awk 'NR==1' ~/.bash_setup/.dailyNotes`; NOTE2=`awk 'NR==2' ~/.bash_setup/.dailyNotes`
	NOTE3=`awk 'NR==3' ~/.bash_setup/.dailyNotes`; NOTE4=`awk 'NR==4' ~/.bash_setup/.dailyNotes`
	NOTE5=`awk 'NR==5' ~/.bash_setup/.dailyNotes`; NOTE6=`awk 'NR==6' ~/.bash_setup/.dailyNotes`
	NOTE7=`awk 'NR==7' ~/.bash_setup/.dailyNotes`; NOTE8=`awk 'NR==8' ~/.bash_setup/.dailyNotes`
	NOTE9=`awk 'NR==9' ~/.bash_setup/.dailyNotes`; NOTE10=`awk 'NR==10' ~/.bash_setup/.dailyNotes`
	echo -e "\e[031m------------------------REMINDER-------------------\e[034m"
	if [ -n "$NOTE1" ]; then echo -e "\t\t\t\t$NOTE1"; fi; if [ -n "$NOTE2" ]; then echo -e "\t\t\t\t$NOTE2"; fi
	if [ -n "$NOTE3" ]; then echo -e "\t\t\t\t$NOTE3"; fi; if [ -n "$NOTE4" ]; then echo -e "\t\t\t\t$NOTE4"; fi
	if [ -n "$NOTE5" ]; then echo -e "\t\t\t\t$NOTE5"; fi; if [ -n "$NOTE6" ]; then echo -e "\t\t\t\t$NOTE6"; fi
	if [ -n "$NOTE7" ]; then echo -e "\t\t\t\t$NOTE7"; fi; if [ -n "$NOTE8" ]; then echo -e "\t\t\t\t$NOTE8"; fi
	if [ -n "$NOTE9" ]; then echo -e "\t\t\t\t$NOTE9"; fi; if [ -n "$NOTE10" ]; then echo -e "\t\t\t\t$NOTE10"; fi
	echo -e "\e[031m---------------------------------------------------\e[034m"
else
	echo "() PROBLEM REMINDER"
fi
if [ ! -f ~/.bash_aliases -a ! -n ~/.bash_aliases ];then
	echo "() ~/.bash_aliases PROBLEMFILE" >> ~/.bash_setup/.debugged
fi
	echo -en "\e[0m"; echo -e "\e[031m--------------------------------------\e[0m"
		VAR1=`awk 'NR==1' ~/.bash_setup/.bash_aliases`; VAR2=`awk 'NR==2' ~/.bash_setup/.bash_aliases`
		VAR3=`awk 'NR==3' ~/.bash_setup/.bash_aliases`; VAR4=`awk 'NR==4' ~/.bash_setup/.bash_aliases`
		VAR5=`awk 'NR==5' ~/.bash_setup/.bash_aliases`; VAR6=`awk 'NR==6' ~/.bash_setup/.bash_aliases`
		VAR7=`awk 'NR==7' ~/.bash_setup/.bash_aliases`; VAR8=`awk 'NR==8' ~/.bash_setup/.bash_aliases`
		VAR9=`awk 'NR==9' ~/.bash_setup/.bash_aliases`; VAR10=`awk 'NR==10' ~/.bash_setup/.bash_aliases`
		VAR11=`awk 'NR==11' ~/.bash_setup/.bash_aliases`; VAR12=`awk 'NR==12' ~/.bash_setup/.bash_aliases`
		VAR13=`awk 'NR==13' ~/.bash_setup/.bash_aliases`; VAR14=`awk 'NR==14' ~/.bash_setup/.bash_aliases`
		VAR15=`awk 'NR==15' ~/.bash_setup/.bash_aliases`; VAR16=`awk 'NR==16' ~/.bash_setup/.bash_aliases`
		VAR17=`awk 'NR==17' ~/.bash_setup/.bash_aliases`; VAR18=`awk 'NR==18' ~/.bash_setup/.bash_aliases`
		VAR19=`awk 'NR==19' ~/.bash_setup/.bash_aliases`; VAR20=`awk 'NR==20' ~/.bash_setup/.bash_aliases`
		VAR21=`awk 'NR==21' ~/.bash_setup/.bash_aliases`; VAR22=`awk 'NR==22' ~/.bash_setup/.bash_aliases`
		VAR23=`awk 'NR==23' ~/.bash_setup/.bash_aliases`; VAR24=`awk 'NR==24' ~/.bash_setup/.bash_aliases`
		VAR25=`awk 'NR==25' ~/.bash_setup/.bash_aliases`; VAR26=`awk 'NR==26' ~/.bash_setup/.bash_aliases`
		VAR27=`awk 'NR==27' ~/.bash_setup/.bash_aliases`; VAR28=`awk 'NR==28' ~/.bash_setup/.bash_aliases`
		VAR29=`awk 'NR==29' ~/.bash_setup/.bash_aliases`; VAR30=`awk 'NR==30' ~/.bash_setup/.bash_aliases`
	if [ -n "$VAR1" -o -n "$VAR2" ]; then
		echo -en "\e[041m $VAR1 \e[0m|    |"; echo -e "\e[046m $VAR2\e[0m"
	fi
	if [ -n "$VAR3" -o -n "$VAR4" ]; then
		echo -en "\e[042m $VAR3 \e[0m|    |"; echo -e "\e[042m $VAR4\e[0m"
	fi
	if [ -n "$VAR5" -o -n "$VAR6" ]; then
		echo -en "\e[043m $VAR5 \e[0m|    |"; echo -e "\e[043m $VAR6\e[0m"
	fi
	if [ -n "$VAR7" -o -n "$VAR8" ]; then
		echo -en "\e[044m $VAR7 \e[0m|    |"; echo -e "\e[044m $VAR8\e[0m"
	fi
	if [ -n "$VAR9" -o -n "$VAR10" ]; then
		echo -en "\e[045m $VAR9 \e[0m|    |"; echo -e "\e[045m $VAR10\e[0m"
	fi
	if [ -n "$VAR11" -o -n "$VAR12" ]; then
		echo -en "\e[041m $VAR11 \e[0m|    |"; echo -e "\e[044m $VAR12\e[0m"
	fi
	if [ -n "$VAR13" -o -n "$VAR14" ]; then
		echo -en "\e[042m $VAR13 \e[0m|    |"; echo -e "\e[042m $VAR14\e[0m"
	fi
	if [ -n "$VAR15" -o -n "$VAR16" ]; then
		echo -en "\e[043m $VAR15 \e[0m|    |"; echo -e "\e[045m $VAR16\e[0m"
	fi
	if [ -n "$VAR17" -o -n "$VAR18" ]; then
		echo -en "\e[044m $VAR17 \e[0m|    |"; echo -e "\e[041m $VAR18\e[0m"
	fi
	if [ -n "$VAR19" -o -n "$VAR20" ]; then
		echo -en "\e[045m $VAR19 \e[0m|    |"; echo -e "\e[042m $VAR20\e[0m"
	fi
	if [ -n "$VAR21" -o -n "$VAR22" ]; then
		echo -en "\e[043m $VAR21 \e[0m|    |"; echo -e "\e[045m $VAR22\e[0m"
	fi
	if [ -n "$VAR23" -o -n "$VAR24" ]; then
		echo -en "\e[042m $VAR23 \e[0m|    |"; echo -e "\e[041m $VAR24\e[0m"
	fi
	if [ -n "$VAR25" -o -n "$VAR26" ]; then
		echo -en "\e[044m $VAR25 \e[0m|    |"; echo -e "\e[042m $VAR26\e[0m"
	fi
	if [ -n "$VAR27" -o -n "$VAR28" ]; then
		echo -en "\e[045m $VAR27 \e[0m|    |"; echo -e "\e[043m $VAR28\e[0m"
	fi
	if [ -n "$VAR29" -o -n "$VAR30" ]; then
		echo -en "\e[041m $VAR29 \e[0m|    |"; echo -e "\e[044m $VAR30\e[0m"
	fi
echo -e "\e[031m--------------------------------------\e[0m"
