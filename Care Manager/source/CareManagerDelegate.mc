using Toybox.WatchUi as Ui;

class CareManagerDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new CareManagerMenuDelegate(), Ui.SLIDE_UP);
        return true;
    }

}