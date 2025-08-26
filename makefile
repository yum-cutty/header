.PHONY: java html python

ARGS := $(wordlist 2, 99, $(MAKECMDGOALS))

java:
	@bash <(curl -s https://raw.githubusercontent.com/yum-cutty/header/main/src/double_slash.sh) $(ARGS)

html:
	@bash <(curl -s https://raw.githubusercontent.com/yum-cutty/header/main/src/SGML.sh) $(ARGS)

python:
	@bash <(curl -s https://raw.githubusercontent.com/yum-cutty/header/main/src/hashtag.sh) $(ARGS)

%:
	@:
