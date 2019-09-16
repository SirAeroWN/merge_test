MKHKS=mkdir -p .git/hooks

default: silly_hooks/post-commit
	$(MKHKS)
	cp ./silly_hooks/post-commit .git/hooks/

all: hooks/*
	$(MKHKS)
	cp -r ./hooks .git

clean:
	rm -rf .git/hooks
