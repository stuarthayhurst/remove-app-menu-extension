## Remove App Menu GNOME Extension
  - Remove the application menu from the top bar in GNOME
  - Supports GNOME 3.36+, earlier versions are untested
  - Updated version of the [original](https://github.com/rastersoft/remove_app_menu)
  - Get the extension from [here](https://extensions.gnome.org/extension/3906/remove-app-menu/)
  - This project is licensed under GPL 3.0

![Extension](docs/icon.png)

## Install the extension from releases:
  - Extract the zip to `~/.local/share/gnome-shell-extensions/RemoveAppMenu@Dragon8oy.com/`
  - Reload GNOME
  - Enable the extension

## Install the extension from source:
  - `make build`
  - `make install`
  - Reload GNOME
  - Enable the extension

## Build system usage:
  - `make build`: Creates extension zip
  - `make install`: Installs the extension
  - `make uninstall`: Uninstalls the extension
  - `make clean`: Deletes extension zip

### Screenshot:
![Extension](docs/screenshot.png)
