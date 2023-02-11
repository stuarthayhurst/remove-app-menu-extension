SHELL = bash
UUID = RemoveAppMenu@Dragon8oy.com
COMPRESSLEVEL = -o7

BUILD_DIR = build
PNG_FILES = $(wildcard ./docs/*.png)
BUNDLE_PATH="$(BUILD_DIR)/$(UUID).shell-extension.zip"

.PHONY: build package check prune compress install uninstall clean $(PNG_FILES)

build: clean
	@mkdir -p $(BUILD_DIR)
	$(MAKE) package
package:
	@echo "Packing files..."
	@cd "extension"; \
	gnome-extensions pack --force \
	--extra-source=../LICENSE.txt \
	-o ../$(BUILD_DIR)/
check:
	@if [[ ! -f $(BUNDLE_PATH) ]]; then \
	  echo -e "\nWARNING! Extension zip couldn't be found"; exit 1; \
	elif [[ "$$(stat -c %s $(BUNDLE_PATH))" -gt 4096000 ]]; then \
	  echo -e "\nWARNING! The extension is too big to be uploaded to the extensions website, keep it smaller than 4096 KB"; exit 1; \
	fi
prune:
	./clean-svgs.py
compress:
	$(MAKE) $(PNG_FILES)
$(PNG_FILES):
	@echo "Compressing $@..."
	@optipng $(COMPRESSLEVEL) -quiet -strip all "$@"
install:
	@if [[ ! -f $(BUNDLE_PATH) ]]; then \
	  $(MAKE) build; \
	fi
	gnome-extensions install $(BUNDLE_PATH) --force
uninstall:
	gnome-extensions uninstall "$(UUID)"
clean:
	@rm -rfv $(BUILD_DIR)
	@rm -rfv "$(UUID).shell-extension.zip"
