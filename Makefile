format:
	wolframscript -f formatter.m ${FILE}
	sed -i.bak '/^$$/d' ${FILE}
	rm ${FILE}.bak