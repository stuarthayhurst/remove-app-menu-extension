## Remove App Menu GNOME Extension
  - Remove the application menu from the top bar in GNOME
  - Supports GNOME 3.36+, earlier versions are untested
  - Updated version of the [original](https://github.com/rastersoft/remove_app_menu)
  - Get the extension from [here](https://extensions.gnome.org/extension/3906/remove-app-menu/)
  - This project is licensed under GPL 3.0

![Extension](docs/icon.png)
## Create an extension bundle:
  - `gnome-extensions pack --force ../remove-app-menu-extension`

## Install the extension bundle:
 - `gnome-extensions install --force RemoveAppMenu@Dragon8oy.com.shell-extension.zip`
 - Reload GNOME
 - Enable the extension

### Screenshot:
![Extension](docs/screenshot.png)
