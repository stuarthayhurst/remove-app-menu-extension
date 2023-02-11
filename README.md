<p align="center">
  <img src="https://github.com/stuarthayhurst/remove-app-menu-extension/raw/master/docs/icon.svg" alt="remove-app-menu-extension" width="200px">
</p>

## Remove App Menu GNOME Extension
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/stuartahayhurst)
  - Remove the application menu from the top bar in GNOME
  - Supports GNOME 3.36+, earlier versions are untested
  - Get the extension from [here](https://extensions.gnome.org/extension/3906/remove-app-menu/)
  - This project is licensed under GPL 3.0
  - Any donations are greatly appreciated :)

## Install the extension from releases:
  - Extract the zip to `~/.local/share/gnome-shell-extensions/RemoveAppMenu@Dragon8oy.com/`
    - Alternatively: `gnome-extensions install "RemoveAppMenu@Dragon8oy.com.shell-extension.zip" --force`
  - Reload GNOME: <kbd>ALT</kbd>+<kbd>F2</kbd>, <kbd>r</kbd>, <kbd>ENTER</kbd>
  - Enable the extension: `gnome-extensions enable RemoveAppMenu@Dragon8oy.com`

## Install the extension from source:
  - `make build`
  - `make install`
  - Reload GNOME: <kbd>ALT</kbd>+<kbd>F2</kbd>, <kbd>r</kbd>, <kbd>ENTER</kbd>
  - Enable the extension: `gnome-extensions enable RemoveAppMenu@Dragon8oy.com`

## Build system usage:
  - `make build`: Creates extension zip
  - `make check`: Runs checks on built extension zip
  - `make prune`: Removes rubbish from any .svgs in `docs/`
  - `make install`: Installs the extension
  - `make uninstall`: Uninstalls the extension
  - `make clean`: Deletes extension zip

### Screenshot:
![Extension](docs/screenshot.png)
