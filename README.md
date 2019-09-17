# merge_test

``make all`` will install all of the normal git hooks.
As will ``./install_hooks.sh``.

``make <hook name>`` will install just that hook.
``make clean`` will delete ``.git/hooks`` (don't worry, the other make commands are smart enough to make sure ``.git/hooks`` exists).
Just ``make`` will install whatever ``DEFAULT`` is set to in the Makefile.

If you need help or want more info on how to make the silly hooks work, just HMU.
