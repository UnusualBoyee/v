#!/bin/bash
if [ ! -d ~/.bash_setup ]; then
	mkdir ~/.bash_setup
	touch ~/.bash_setup/.dailyNotes
	touch ~/.bash_setup/.debugged
	mv bash_rc.sh ~/.bash_setup/.bash_rc
else
	touch ~/.bash_setup/.dailyNotes
	if [ ! -f ~/.bash_setup/.bash_rc ]; then
	mv bash_rc.sh ~/.bash_setup/.bash_rc
	fi
fi
if [ ! -f ~/.bash_setup/.lock ]; then
	NO=`grep -Fni '"$color_prompt" = yes ]; then' ~/.bashrc | cut --delimiter=":" --fields=1 | awk 'NR==1'`
	let 'NO +=1 '
	sed -i "$NO i . ~/.bash_setup/.bash_rc" ~/.bashrc
	ANO=`grep -Fi .bash_setup/.dailyNotes ~/.bash_aliases`
	if [ ! $? -eq 0 ]; then
		sed -i "$ aalias dn='vim ~/.bash_setup/.dailyNotes'" ~/.bash_aliases
	fi
		
fi
sed -e 's/alias //g' ~/.bash_aliases | sed 's/#.*//g' | sort -b | awk '{if(NF>0) {print $0}}' > ~/.bash_setup/.bash_aliases
chmod 600 ~/.bash_setup/.dailyNotes
chmod 500 ~/.bash_setup/.bash_rc
chmod 600 ~/.bash_setup/.bash_aliases
