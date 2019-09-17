MKHKS=mkdir -p .git/hooks
H=hooks
SH=silly_hooks
DEFAULT_HOOK=post-checkout
DEFAULT=$(H)/$(DEFAULT_HOOK)

default: $(DEFAULT)
	$(MKHKS)
	cp ./$(DEFAULT) .git/hooks/

all: hooks/*
	$(MKHKS)
	cp -r ./hooks .git

clean:
	rm -rf .git/hooks
