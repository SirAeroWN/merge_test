Git Hooks for Fun and Profit
==============================
- Presentation is based on using git in a unix shell-like environment, YMMV with GUIs

What is a Git hook?
============================================================
- a git hook is a script that gets run automatically when certain git events occur
- they can be in any scripting language which can be specified using a shebang line
- you could use a binary if it's wrapped in a small script
- they live in ``.git/hooks/``


What would I use that for?
============================================================
- automating parts of your workflow
- encourage or enforce commit message formatting
- prepopulate commit messages
- whatever you can imagine and build


Ok, what hooks are available for me to use?
============================================================
- see ``git help hooks`` for a complete list
- some of the more commonly used hooks:
  - pre-commit
  - prepare-commit-msg
  - commit-msg
  - post-commit
  - post-checkout
  - pre-rebase
  - pre-push


Good examples of things you can do with a git hook
============================================================
pre-commit
------------------------------
- prevent committing trailing whitespace
- lint committed files and prevent commit on failure

prepare-commit-msg
------------------------------
- insert the branch name (and thus ticket) into the beginning of every commit
- give a summary of commit changes
- lint committed files and warn on failure

commit-msg
------------------------------
- everything you can do with a prepare-commit-msg except now you can't edit the commit message
- which if you want to enforce a commit format is a good thing
- correct spelling, problematic when commit messages frequently include non-english strings

post-commit
------------------------------
- generate tags files
- push automatically (don't know if that's a *good* example

post-checkout
------------------------------
- clean up build files
- kick off a full rebuild
- update all the non-software repos
- start tracking remote if this is a new branch
  - ``git for-each-ref --format='%(upstream:short)' "$(git symbolic-ref -q HEAD)"`` will be empty if new

pre-rebase
------------------------------
- prevent rebasing already published code

pre-push
------------------------------
- last chance to stop code from being published, can have user verify they are pushing to correct branch



silly examples of things you can do with git hooks
============================================================
- install a hook on a teammates' machine that randomly plays a bell when committing to troll your teammates
- tweet all of your commits
- send an email to your code reviewer every time you do a push

NOTE: talk about git filters if the above doesn't take enough time



Sources
==============================
https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks

https://www.atlassian.com/git/tutorials/git-hooks

https://www.tygertec.com/git-hooks-practical-uses-windows/
