
default: hooks/post-checkout
	mkdir -p .git/hooks
	cp ./hooks/post-checkout .git/hooks/

all: hooks/*
	mkdir -p .git/hooks
	cp -r ./hooks .git

clean:
	rm -rf .git/hooks
