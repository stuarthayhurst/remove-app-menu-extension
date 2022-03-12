SHELL=bash
UUID=RemoveAppMenu@Dragon8oy.com
COMPRESSLEVEL=-o7

PNG_FILES=$(wildcard ./docs/*.png)

.PHONY: build check prune compress install uninstall clean $(PNG_FILES)

build:
	gnome-extensions pack --force --extra-source=LICENSE.txt
check:
	@if [[ ! -f "$(UUID).shell-extension.zip" ]]; then \
	  echo -e "WARNING! Extension zip couldn't be found"; exit 1; \
	elif [[ "$$(stat -c %s $(UUID).shell-extension.zip)" -gt 4096000 ]]; then \
	  echo -e "\nWARNING! The extension is too big to be uploaded to the extensions website, keep it smaller than 4096 KB"; exit 1; \
	fi
prune:
	./clean-svgs.py
compress:
	$(MAKE) $(PNG_FILES)
$(PNG_FILES):
	optipng "$(COMPRESSLEVEL)" -strip all "$@"
install:
	gnome-extensions install "$(UUID).shell-extension.zip" --force
uninstall:
	gnome-extensions uninstall "$(UUID)"
clean:
	rm -rf "$(UUID).shell-extension.zip"
