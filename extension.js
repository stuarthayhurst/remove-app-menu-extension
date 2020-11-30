const Main = imports.ui.main;
var signalShow;

function enable() {
  signalShow=Main.panel.statusArea.appMenu.connect("show",function () {
    Main.panel.statusArea.appMenu.hide();
  });
  Main.panel.statusArea.appMenu.hide();
}

function disable() {
  Main.panel.statusArea.appMenu.disconnect(signalShow);
  Main.panel.statusArea.appMenu.show();
}

function init() {
  //Do nothing
}
