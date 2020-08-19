if [[ $(xinput list 15 | grep -Ec "disabled") -eq 1 ]]; then
	xinput enable 15
else
	xinput disable 15
fi
