FILE=guessinggame.sh
README=README.md

readme:
	echo '# guessinggame' > $(README)
	echo '' >> $(README)
	echo -n "Generated at $(NOW)" >> $(README)
	date >> $(README)
	echo '' >> $(README)
	echo 'Lines: ' >> $(README)
	wc -l $(FILE) >> $(README)
