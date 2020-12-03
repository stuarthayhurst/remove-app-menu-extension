const Main = imports.ui.main;
const appMenu = Main.panel.statusArea.appMenu;
let monitorsChangedEvent = null;
let showEvent = null;

function hideMenu() {
  //Hide the menu if available
  if(appMenu != null) {
    appmenu.hide();
  }
}

function enable() {
  //Hide menu when something attempts to show it or the ui is reloaded
  monitorsChangedEvent = appMenu.connect('monitors-changed', hideMenu);
  showEvent = Main.layoutManager.connect('show', hideMenu);
  //Hide appMenu
  hideMenu();
}

function disable() {
  //Disconnect hiding the app menu from events and show it again
  appMenu.disconnect(monitorsChangedEvent);
  appMenu.disconnect(showEvent);
  //Show appMenu, if available
  if(appMenu != null) {
    appmenu.show();
  }
}

function init() {
  //Nothing needs to be done here
}
