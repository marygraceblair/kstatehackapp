using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class Time_Piece_CareDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new Time_Piece_CareMenuDelegate(), Ui.SLIDE_UP);
        return true;
    }
    
    function onBack(){
    	Ui.switchToView(new Time_Piece_CareView(), new Time_Piece_CareDelegate(), Ui.SLIDE_UP);
    	//Ui.popView(Ui.SLIDE_UP); 
    	return true; 
    }
    

}