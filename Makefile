TARGETS=contact.html index.html new-members.html people.html seminars.html software.html teaching.html publications.html
.PHONY: blog

all: setup blog $(TARGETS)

setup:
	raco pkg install --auto --skip-installed gregor

# Update `master` branch with changes from the last *merge commit* on `src`
sync:
	git cherry-pick -m 1 origin/src
	make all
	git add .
	git commit -e -m "** sync"
	git push origin master

publication.html: publication.rkt publication-data.rkt templates.rkt
	if [ -f $@ ]; then chmod +w $@; fi
	racket -t $< > $@
	chmod -w $@

%.html: %.rkt templates.rkt
	if [ -f $@ ]; then chmod +w $@; fi
	racket -t $< > $@
	chmod -w $@

blog:
	cd blog && make

clean:
	rm -f $(TARGETS)
