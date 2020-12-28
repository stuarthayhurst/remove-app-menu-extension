const Main = imports.ui.main;

class Extension {
  constructor() {
    this.appMenu=Main.panel.statusArea.appMenu;
    this.monitorsChangedEvent = null;
    this.showEvent = null;
  }

  hideMenu() {
    //Hide the menu if available
    if(this.appMenu != null) {
      this.appMenu.hide();
    }
  }

  enable() {
    //Hide menu when something attempts to show it or the ui is reloaded
    this.monitorsChangedEvent = Main.layoutManager.connect('monitors-changed', this.hideMenu);
    this.showEvent = this.appMenu.connect('show', this.hideMenu);
    //Hide appMenu
    this.hideMenu();
  }

  disable() {
    //Disconnect hiding the app menu from events and show it again
    this.appMenu.disconnect(this.monitorsChangedEvent);
    this.appMenu.disconnect(this.showEvent);
    //Show appMenu, if available
    if(this.appMenu != null) {
      this.appMenu.show();
    }
  }
}

function init() {
  return new Extension();
}
