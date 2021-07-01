#!/bin/bash

NO=`grep -Fni '"$color_prompt" = yes ]; then' ~/.bashrc | cut --delimiter=":" --fields=1 | awk 'NR==1'`
let 'NO += 1'
ANO=`grep -Fni '.bash_setup/.dailyNotes' ~/.bash_aliases`
NXT=`grep -Fni '. ~/.bash_setup/.bash_rc' ~/.bashrc | cut --delimiter=":" --fields=1 | awk 'NR==1'`
ANXT=`grep -Fni '.bash_setup/.dailyNotes' ~/.bash_aliases | cut --delimiter=":" --fields=1 | awk 'NR==1'`
echo "!!!$(uname -n)!!!"
echo
init_me () {
if [ ! -d ~/.bash_setup ]; then
	mkdir ~/.bash_setup
	if [ ! -f ~/.bash_aliases ]; then touch ~/.bash_aliases; echo "Gift-end"; fi
	touch ~/.bash_setup/.dailyNotes
	touch ~/.bash_setup/.debugged
	touch ~/.bash_setup/.bash_aliases
	mv secFile.sh ~/.bash_setup/.bash_rc
	echo "Copied and Created"
        sed -e 's/alias //g' ~/.bash_aliases | sed 's/#.*//g' | sort -b | awk '{if(NF>0) {print $0}}' > ~/.bash_setup/.bash_aliases
	sed -i "$NO i . ~/.bash_setup/.bash_rc" ~/.bashrc
	if [ -z $ANO ]; then
	sed -i "$ aalias dn='vim ~/.bash_setup/.dailyNotes'" ~/.bash_aliases
	fi
	echo "Appending Completed"
	chmod 600 ~/.bash_setup/.dailyNotes
	chmod 600 ~/.bash_setup/.bash_rc
	chmod 600 ~/.bash_setup/.bash_aliases
	echo "Ownering Completed"
fi
echo "DONE"
}
#Check
check_me () {
if [ -d ~/.bash_setup ]; then
	if [ ! -f ~/.bash_setup/.bash_rc ];then echo "RC file missing"
else echo "BASH_RC exists"
	fi
	if [ ! -f ~/.bash_setup/.dailyNotes ]; then echo "NOTEs file Missing"
else echo "DAILYNOTES exists"
fi
	if [ ! -f ~/.bash_aliases -o ! -f ~/.bash_setup/.bash_aliases ]; then echo "ALIASes file Missing"
else echo "BASH_ALIAS exists"
	fi
	if [ $NO -eq 0 ]; then echo "MAIN RC file err"
else echo "COPIED MAIN_RC"
	fi
	if [ $ANO -eq 0 ]; then echo "APPEND err"
else echo "APPENDED" 
	fi
else echo "Already Missing MAINDIRS"
fi
echo "DONE"
}
del_me () {
	echo "UNINSTALLING"
	if [ -d ~/.bash_setup ]; then
	sudo rm -r ~/.bash_setup
	fi
	if [ ! -z "${NXT}" -a ! -z "${ANXT}" ]; then
	sed -i "${NXT}d" ~/.bashrc 
	sed -i "${ANXT}d" ~/.bash_aliases
	fi
	echo "DONE"
       	exit 1
}
if [ -z $1 ]; then 
	init_me
	exit 1
elif [ $1 == 'c' ]; then 
	check_me
	exit 1
elif [ $1 == 'u' ]; then  
	del_me
	exit 1
else echo "FAILED"
fi

