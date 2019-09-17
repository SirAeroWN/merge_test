MKHKS=mkdir -p .git/hooks
H=hooks
SH=silly_hooks
DEFAULT_HOOK=post-checkout
DEFAULT=$(H)/$(DEFAULT_HOOK)

default: $(DEFAULT)
	$(MKHKS)
	cp ./$< .git/hooks/


%: $@
	$(MKHKS)
	cp ./hooks/$@ .git/hooks/


all: hooks/*
	$(MKHKS)
	cp -r ./hooks .git


.PHONY: clean
clean:
	rm -rf .git/hooks
