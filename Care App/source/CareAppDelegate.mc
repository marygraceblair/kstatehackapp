using Toybox.WatchUi as Ui;

class CareAppDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new CareAppMenuDelegate(), Ui.SLIDE_UP);
        return true;
    }

}