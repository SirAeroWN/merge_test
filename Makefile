MKHKS=mkdir -p .git/hooks
H=hooks
SH=silly_hooks
DEFAULT_HOOK=post-checkout
DEFAULT=$(H)/$(DEFAULT_HOOK)

default: $(DEFAULT)
	$(MKHKS)
	cp ./$(DEFAULT) .git/hooks/


commit-msg: hooks/commit-msg
    $(MKHKS)
    cp ./hooks/commit-msg .git/hooks/


post-checkout: hooks/post-checkout
    $(MKHKS)
    cp ./hooks/post-checkout .git/hooks/


pre-commit: hooks/pre-commit
    $(MKHKS)
    cp ./hooks/pre-commit .git/hooks/


pre-rebase: hooks/pre-rebase
    $(MKHKS)
    cp ./hooks/pre-rebase .git/hooks/


prepare-commit-msg: hooks/prepare-commit-msg
    $(MKHKS)
    cp ./hooks/prepare-commit-msg .git/hooks/


all: hooks/*
	$(MKHKS)
	cp -r ./hooks .git

clean:
	rm -rf .git/hooks
