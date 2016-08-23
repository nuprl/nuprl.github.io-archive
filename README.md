# nuprl.github.io

Overview
========

This is the website for the Northeastern University Programming Research Lab,
hosted at prl.ccs.neu.edu.

Please send pull requests to the [`src`](https://github.com/nuprl/nuprl.github.io/tree/src) branch of this repository.

To merge changes from a branch targeting `src` into `master`:
1. Merge the branch into `src`.
   Be sure to create a merge commit (use `--no-ff` on the command line).
2. Checkout the `master` branch.
3. Run `make sync`. This should:
   - cherry pick the merge commit, pulling in the new changes
   - rebuild the site
   - attempt to commit the changes & rebuilt site

If you did not make a merge commit, use `git cherry-pick <COMMIT-SHA>` to pull
 individual commits to master.
Then, run `make` and commit/push the changes to `master`.


Building
========

Build Prerequisites: [Racket](http://racket-lang.org/)

You can regenerate the templated pages by running `make`. Eventually we will
have a script that does this automatically on commit.
