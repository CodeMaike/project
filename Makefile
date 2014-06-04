install: 
	msgfmt -o codefile-de.mo lang.po
	install codefile /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	install codefile-de.mo /usr/share/locale/de_DE/LC_MESSAGES/codefile.mo
	xgettext -o codefile.pot -L Shell codefile

clone:
	git clone https://github.com/CodeMaike/project.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags

