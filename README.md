# nuprl.github.io

Overview
========

This is the website for the Northeastern University Programming Research Lab,
hosted at prl.ccs.neu.edu.

Please send pull requests to the [`src`](https://github.com/nuprl/nuprl.github.io/tree/src) branch of this repository.
Someone else will merge those changes into master & rebuild the site.
If not, you can commit changes to `src` and then:
- Use `git cherry-pict <COMMIT-SHA>` to pull a specific commit from `src` to `master`
- Run `make` to rebuild the site
- Commit the generated files on `master`


Building
========

Build Prerequisites: [Racket](http://racket-lang.org/)

You can regenerate the templated pages by running `make`. Eventually we will
have a script that does this automatically on commit.
